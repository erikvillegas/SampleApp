//
//  AppDelegate.swift
//  SampleApp
//
//  Created by Erik Villegas on 3/11/18.
//  Copyright © 2018 Foobar. All rights reserved.
//

import UIKit
import PromiseKit
import Alamofire

enum AppError: Error {
    case userMappingFailed
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    // Create a function that fulfills this requirement:
    // input: Message string containing user IDs
    // output: Same message string, with each user ID replaced with the appropriate handle
    
    // Example:
    // this input: "Hello U59184."
    // should return this output: "Hello @jim"
    
    // this input: "Hey U04713, want to have lunch with U14833 and U81435?"
    // should return this output: "Hey @michael, want to have lunch with @dwight and @angela?"
    
    // Use this web service to convert a user identifier to a user handle:
    // GET http://159.65.79.138/user/<userId>
    
    // NOTE: user IDs begin with an uppercase "U", followed by 5 digits 0-9.
    func convertMessage(input: String) -> Promise<String> {
        // TODO :)
    }
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        let input = "Hello U59184."
        self.convertMessage(input: input).then { output in
            print(output)
        }.catch { _ in
            print("oops, could not convert the message!")
        }
        
        
        return true
    }
}

