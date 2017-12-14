//
//  AppDelegate.swift
//  ApolloGraphQL
//
//  Created by Venkatrao on 05/12/17.
//  Copyright © 2017 Stellent Soft Pvt Ltd. All rights reserved.
//

import UIKit
import Apollo //Importing apollo module

// Creating apollo client instance using our server base URL
let apolloClient = ApolloClient(url: URL(string: "http://talents.myappdemo.us/graphql?")!)

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        apolloClient.cacheKeyForObject = { $0["_id"] } // assigning unique id of our records to caching purpose
        return true
    }
}

