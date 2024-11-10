//
//  ContentView.swift
//  Tontrix
//
//  Created by Prateek Saini on 24/02/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var logincontroller  = LoginController()
    @State var loggedIn : Bool = false
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            TextField("Username", text: $logincontroller.username)
                .textFieldStyle(.roundedBorder)
                .padding()
            SecureField("Password", text: $logincontroller.password)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Button("Login"){
                if logincontroller.authenticate(){
                    self.loggedIn = true
                }
            }
            .padding()
        }.padding()
            .alert(isPresented: $logincontroller.showAlert){
                Alert(title: Text("Login Error"), message: Text(logincontroller.alertMessage), dismissButton: .default( Text("OK")) )
            }
            .fullScreenCover(isPresented: $loggedIn){
                HomePageView()
            }
        
    }
    
}
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
