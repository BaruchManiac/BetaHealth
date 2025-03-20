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
    @Published var uiState: SignUpUIState = .none
    func signinreturn(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.uiState = .goToSignInScreen
        }
    }
}
extension SignUpViewModel {
    func signinView() -> some View {
        return SignUpViewModelRouter.makeSignInView()
    }
}

