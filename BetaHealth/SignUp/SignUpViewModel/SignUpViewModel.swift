//
//  SignUpViewModel.swift
//  BetaHealth
//
//  Created by Baruch on 19/03/25.
//
import SwiftUI

class SignUpViewModel: ObservableObject {
    
    @Published var nick: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var confirmPassword: String = ""
    
    func signUp() {
           print("email: \(email)", "password : \(password)", "nick: \(nick)", "confirmPassword: \(confirmPassword)")
       }
}



