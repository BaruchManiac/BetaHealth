//
//  SignUpUIState.swift
//  BetaHealth
//
//  Created by Baruch on 20/03/25.
//
import Foundation

enum SignUpUIState {
    case none
    case loading
    case goToSignInScreen
    case error(String)
}

