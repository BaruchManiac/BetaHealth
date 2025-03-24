//
//  SignUpViewModelRouter.swift
//  BetaHealth
//
//  Created by Baruch on 20/03/25.
//
import SwiftUI
import Combine

enum SignUpViewModelRouter {
   static func makeSignInView() -> some View {
       let viewModel = SignInViewModel()
        return SignInView(viewModel: viewModel)
    }
}
enum SignUpViewModelRouter2 {
    static func makeHomeView() -> some View {
       let viewModel = HomeViewModel()
        return HomeView(viewModel: viewModel)
    }
}


