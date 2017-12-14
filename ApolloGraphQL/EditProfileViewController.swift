//
//  EditProfileViewController.swift
//  ApolloGraphQL
//
//  Created by Venkatrao on 05/12/17.
//  Copyright © 2017 Stellent Soft Pvt Ltd. All rights reserved.
//

import UIKit
import Apollo

class EditProfileViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var stateTF: UITextField!
    var currentUser:ListUsersQuery.Data.ListUser?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameTF.text = currentUser?.name ?? ""
        emailTF.text = currentUser?.email ?? ""
        stateTF.text = currentUser?.state ?? ""
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func saveBtnAction(_ sender: Any) {
        guard !(nameTF.text!.isEmpty) else {
            self.showAlert(withMessage: "User name can't be empty")
            return
        }
        guard !(emailTF.text!.isEmpty) else {
            self.showAlert(withMessage: "User email can't be empty")
            return
        }
        guard !(stateTF.text!.isEmpty) else {
            self.showAlert(withMessage: "User state can't be empty")
            return
        }
        // Creating updateProfile mutation with new values
        let updateProfileMutation = UpdateProfileMutation(_id: currentUser?.id, loginType: currentUser?.loginType ?? "customer", email: emailTF.text ?? "" , name: nameTF.text ?? "", rank: currentUser?.rank ?? "", relegiousObservance: currentUser?.relegiousObservance ?? "", yearsOfExperience: currentUser?.yearsOfExperience ?? "", state: stateTF.text ?? "", bio: currentUser?.bio ?? "", profilePic: currentUser?.profilePic ?? "")
        self.updateProfile(mutation: updateProfileMutation)
    }
    
    func updateProfile(mutation:UpdateProfileMutation) {
        // Performing mutation with mutation object
        apolloClient.perform(mutation: mutation)
        { (result, error) in
            if let error = error
            {
                self.showAlert(withMessage: error.localizedDescription)
            }
            else
            {
                self.currentUser = nil
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
    
    // MARK : TextField delegate methods
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if range.location == 0 && string == " "
        {
            return false
        }
        return true
    }
}
