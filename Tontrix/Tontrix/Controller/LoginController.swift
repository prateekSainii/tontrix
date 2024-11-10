//
//  LoginController.swift
//  Tontrix
//
//  Created by Prateek Saini on 25/02/24.
//

import Foundation

class LoginController : ObservableObject {
    
    @Published var username : String = ""
    @Published var password : String = ""
    @Published var showAlert : Bool = false
    @Published var alertMessage : String = ""
    
    func authenticate() -> Bool{
        let user = User(username: "User", password: "Prateek99")
        let isAuthenticated =  self.username == user.username && self.password == user.password
        
        if !isAuthenticated{
            self.showAlert = true
            self.alertMessage = "Invalid user or password"
        }
        return isAuthenticated
    }
    
}
