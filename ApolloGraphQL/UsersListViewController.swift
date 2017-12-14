//
//  UsersListViewController.swift
//  ApolloGraphQL
//
//  Created by Venkatrao on 05/12/17.
//  Copyright © 2017 Stellent Soft Pvt Ltd. All rights reserved.
//

import UIKit
import Apollo

class UsersListViewController: UITableViewController {
    
    
    var users: [ListUsersQuery.Data.ListUser]? {
        didSet {
            self.tableView.reloadData()
        }
    }
    // Watcher to watch query results
    var watcher: GraphQLQueryWatcher<ListUsersQuery>?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        watchUsersData()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // loadData()
    }
    @objc func editProfile(_ sender:UIButton)
    {
        guard let user = users?[sender.tag] else {
            fatalError("Could not find user at row \(sender.tag)")
        }
        self.performSegue(withIdentifier: "editProfile", sender: user)
    }
    // MARK: - Data loading
    func loadData()
    {
        // Query initialisation with input parameters
        let listUsersQuery = ListUsersQuery(limit: 100)
        // Fetching query results with default cachePolicy and default queue
        apolloClient.fetch(query: listUsersQuery)
        { (result, error) in
            if let error = error
            {
                self.showAlert(withMessage: error.localizedDescription)
            }
            else
            {
                self.users = (result?.data?.listUsers as! [ListUsersQuery.Data.ListUser])
            }
        }
        
        // Fetching query results with specific cachePolicy and specific queue
        
        /* apolloClient.fetch(query: listUsersQuery, cachePolicy: .fetchIgnoringCacheData, queue: DispatchQueue.main)
         { (result, error) in
         if let error = error
         {
         self.showAlert(withMessage: error.localizedDescription)
         }
         else
         {
         self.users = (result?.data?.listUsers as! [ListUsersQuery.Data.ListUser])
         }
         }*/
        
    }
    
    func watchUsersData() {
        // Query initialisation with input parameters
        let listUsersQuery = ListUsersQuery(limit: 100)
        
        // Watching query with specific cachePolicy and specific queue
        /* watcher = apolloClient.watch(query: listUsersQuery, cachePolicy: .fetchIgnoringCacheData, queue: DispatchQueue.main, resultHandler: { (result, error) in
         if let error = error {
         NSLog("Error while fetching query: \(error.localizedDescription)")
         self.showAlert(withMessage: error.localizedDescription)
         return
         }
         self.users = (result?.data?.listUsers as! [ListUsersQuery.Data.ListUser])
         })*/
        
        // Watching query with default cachePolicy and default queue
        watcher = apolloClient.watch(query: listUsersQuery)
        { (result, error) in
            if let error = error {
                NSLog("Error while fetching query: \(error.localizedDescription)")
                self.showAlert(withMessage: error.localizedDescription)
                return
            }
            self.users = (result?.data?.listUsers as! [ListUsersQuery.Data.ListUser])
        }
    }
    // MARK: - UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "profileCell", for: indexPath) as? ProfileCell else {
            fatalError("Could not dequeue ProfileCell")
        }
        guard let user = users?[indexPath.row] else {
            fatalError("Could not find user at row \(indexPath.row)")
        }
        cell.configure(with: user.fragments.userDetails)
        cell.editButton.tag = indexPath.row
        cell.editButton.addTarget(self, action: #selector(editProfile(_:)), for: .touchUpInside)
        return cell
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let editProfileVC = segue.destination as! EditProfileViewController
        editProfileVC.currentUser = sender as? ListUsersQuery.Data.ListUser
    }
    
    // Cancel watcher in viewcontroller deinit
    deinit {
        watcher?.cancel()
    }
    
}
extension UIViewController
{
    func showAlert(withMessage message:String)
    {
        let alertController = UIAlertController(title: "Apollo GraphQL", message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion: nil)
    }
}
