//
//  BetaHealthApp.swift
//  BetaHealth
//
//  Created by Baruch on 17/03/25.
//

import SwiftUI

@main
struct BetaHealthApp: App {
    var body: some Scene {
        WindowGroup {
            SplashView(viewModel : SplashViewModel())
        }
    }
}
