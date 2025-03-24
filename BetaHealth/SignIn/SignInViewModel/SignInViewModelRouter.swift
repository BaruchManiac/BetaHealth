//
//  SignInViewModelRouter.swift
//  BetaHealth
//
//  Created by Baruch on 20/03/25.
//
import SwiftUI
import Combine

enum SignInViewModelRouter {
   static func makeHomeView(publisher: PassthroughSubject<Bool, Never>) -> some View {
       let viewModel = HomeViewModel()
       //viewModel.publisher = publisher
        return HomeView(viewModel: viewModel)
    }
}

