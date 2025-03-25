//
//  SignInViewModelRouter.swift
//  BetaHealth
//
//  Created by Baruch on 20/03/25.
//
import SwiftUI
import Combine

enum SignInViewModelRouter {
    static func makeHomeView() -> some View {
        let viewModel = HomeViewModel()
        return HomeView(viewModel: viewModel)
    }
}
