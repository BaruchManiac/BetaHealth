//
//  SignInViewModel.swift
//  BetaHealth
//
//  Created by Baruch on 18/03/25.
//
import SwiftUI
import Combine

class SignInViewModel : ObservableObject {
    
    private var cancellable: AnyCancellable?
    
    private let publisher = PassthroughSubject<Bool, Never>()
    
    init(){
        cancellable = publisher.sink { value in
            print(value)
            if value {
                self.uiState = .sucess
            }
            
        }
    }
    deinit {
        cancellable?.cancel()
    }
    
    var email: String = ""
    var password: String = ""
    
        func signIn() {
               print("email: \(email), password : \(password)")
           }
    
    @Published var uiState: SignInUIState = .none
    
    func login(email: String, password: String){
        self.uiState = .loading
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.uiState = .sucess
        }
    }
}

extension SignInViewModel {
    func homeView() -> some View {
        return SignInViewModelRouter.makeHomeView(publisher: publisher)
    }
}
