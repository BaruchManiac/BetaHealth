//
//  SignInUIState.swift
//  BetaHealth
//
//  Created by Baruch on 20/03/25.
//
import Foundation

enum SignInUIState {
    case none
    case loading
    case goToHomeScreen
    case error(String)
}
