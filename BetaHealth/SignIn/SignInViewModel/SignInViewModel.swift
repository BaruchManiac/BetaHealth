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
    
    @Published var uiState: SignInUIState = .none
    
    func login(email: String, password: String){
        self.uiState = .loading
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.uiState = .goToHomeScreen
        }
    }
}

extension SignInViewModel {
    func homeView() -> some View {
        return SignInViewModelRouter.makeHomeView()
    }
}
