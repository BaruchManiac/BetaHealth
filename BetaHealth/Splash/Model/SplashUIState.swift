//
//  SplashModel.swift
//  BetaHealth
//
//  Created by Baruch on 17/03/25.
//
import SwiftUI

enum SplashUIState: Codable {
    case loading
    case goToSignInScreen
    case goToHomeScreen
    case error(String)
    
}
