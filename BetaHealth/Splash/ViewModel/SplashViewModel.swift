//
//  SplashViewModel.swift
//  BetaHealth
//
//  Created by Baruch on 18/03/25.
//
import SwiftUI

class SplashViewModel: ObservableObject {
    
    @Published var uiState: SplashUIState = .loading
    
    func onAppear() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.uiState = .goToSignInScreen
        }
    }
}

extension SplashViewModel{
    func signinview() -> some View {
        return SplashViewModelRouter.signInRoute()
    }
    
}

