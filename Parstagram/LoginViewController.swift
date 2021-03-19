//
//  LoginViewController.swift
//  Parstagram
//
//  Created by Corey Cunningham MacbookAir on 3/17/21.
//  Copyright © 2021 Corey Cunningham MacbookAir. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    
    @IBAction func onSignIn(_ sender: Any) {
        let username = usernameField.text!
        let password = passwordField.text!
        PFUser.logInWithUsername(inBackground: username, password: password) {
          (user: PFUser?, error: Error?) -> Void in
          if user != nil {
            self.performSegue(withIdentifier: "toFeed", sender: nil)
          } else {
            print("Error: \(error)")
          }
        }
    }
    
    @IBAction func onSignUp(_ sender: Any) {
        var user = PFUser()
        user.username = usernameField.text
        user.password = passwordField.text
         user.signUpInBackground {
           (succeeded: Bool, error: Error?) -> Void in
           if let error = error {
             let errorString = error.localizedDescription
             // Show the errorString somewhere and let the user try again.
            print("There was an error \(errorString)")
           } else {
            self.performSegue(withIdentifier: "toFeed", sender: nil)
           }
         }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
