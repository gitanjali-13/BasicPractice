//
//  ViewController.swift
//  Demo
//
//  Created by Admin on 11/01/23.
//

import UIKit
import Firebase
import GoogleSignIn
import FirebaseCore

class ViewController: UIViewController {
    
    @IBOutlet weak var googleSigninbtn: UIButton!
    
    let signInConfig = GIDConfiguration(clientID: "330893738292-hcp6fr3anm3q84fa1bbd7bp13pn2rpl3.apps.googleusercontent.com")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func googleSignInTApped(_ sender: UIButton) {
        
        let signIn = GIDConfiguration(clientID: "")
        
//        guard let presentingVC = (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first?.rootViewController else {return}
        // Start the sign in flow!
        GIDSignIn.sharedInstance.signIn(withPresenting: self) { signInResult , error in
            
            if error != nil {
                print("error")
                return
            }
            
            
            guard let result = signInResult , let idToken = result.user.idToken?.tokenString
                    
            else {
               return
            }
            let accessToken = result.user.accessToken.tokenString
            
            let credential = GoogleAuthProvider.credential(withIDToken: idToken,
                                                           accessToken: accessToken)
            self.showCustomAlertLoading = true
            Auth.auth().signIn(with: credential) { authResult, error in
                guard let user = authResult?.user, error == nil else {
                    self.signUpResultText = error?.localizedDescription ?? "Error Occured"
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
                        self.showCustomAlertLoading = false
                    })
                    return}
                self.signUpResultText = "\(user.email!)\nSigning Succesfully"
                self.isSignUpSucces = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
                    self.showCustomAlertLoading = false
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1, execute: {
                        self.navigateHome = true
                    })
                })
                
                
            }
            
        }
    }
}
