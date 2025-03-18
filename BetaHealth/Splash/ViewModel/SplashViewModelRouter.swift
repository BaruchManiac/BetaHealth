//
//  SplashViewModelRouter.swift
//  BetaHealth
//
//  Created by Baruch on 18/03/25.
//
import SwiftUI

enum SplashViewModelRouter {
    
    
   static func signInRoute() -> some View {
       let viewModel = SignInViewModel()
        return SignInView(viewModel: viewModel)
    }
}
