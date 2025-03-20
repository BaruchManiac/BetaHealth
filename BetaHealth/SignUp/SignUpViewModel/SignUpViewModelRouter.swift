//
//  SignUpViewModelRouter.swift
//  BetaHealth
//
//  Created by Baruch on 20/03/25.
//
import SwiftUI

enum SignUpViewModelRouter {
   static func makeSignInView() -> some View {
       let viewModel = SignInViewModel()
        return SignInView(viewModel: viewModel)
    }
}


