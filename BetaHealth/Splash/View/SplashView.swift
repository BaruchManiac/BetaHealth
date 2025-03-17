//
//  SplashView.swift
//  BetaHealth
//
//  Created by Baruch on 17/03/25.
//
import SwiftUI

struct SplashView: View {
    
    @State var state: SplashUIState = .loading
    
    var body: some View {
        switch state {
        case .loading:
            LoadingView()

        case .goToSignInScreen:
            Text("Tela de Login")
        case .goToHomeScreen:
            Text("Tela Principal")
        case .error(let msg):
            Text("ERRO \(msg)")
        }

    }
}
extension SplashView {  // tela de loadin com o passaro
    func LoadingView() -> some View {  //gradiente e tela de fundo, tudo
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.loading, .blue.opacity(0.3)]),
                               startPoint: .bottom,
                               endPoint: .topLeading)
            .edgesIgnoringSafeArea(.all)
            Image("Logo01")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}


#Preview {
    SplashView()
}
