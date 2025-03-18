//
//  SignInViewModel.swift
//  BetaHealth
//
//  Created by Baruch on 18/03/25.
//
import SwiftUI

class SignInViewModel : ObservableObject {
    var email: String = ""
    var password: String = ""
    
    func signIn() {
           print("email: \(email), password : \(password)")
       }
}
