//
//  SplashView.swift
//  BetaHealth
//
//  Created by Baruch on 17/03/25.
//
import SwiftUI

struct SplashView: View {
    
    @ObservedObject var viewModel: SplashViewModel
    
    var body: some View {
        Group {
            switch viewModel.uiState {
            case .loading:
                LoadingView()
            case .goToSignInScreen:
                viewModel.signinview()
            case .goToHomeScreen:
                Text("Tela Principal")
            case .error(let msg):
                LoadingView(error: msg)
            }
        }.onAppear(perform: {
            viewModel.onAppear()
        })

    }
}
extension SplashView {  // tela de loadin com o passaro
    func LoadingView(error: String? = nil) -> some View {  //gradiente e tela de fundo, tudo
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.loading, .blue.opacity(0.3)]),
                               startPoint: .bottom,
                               endPoint: .topLeading)
            .edgesIgnoringSafeArea(.all)
            Image("Logo01")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                
            
            if let error = error {
                Text("")
                .alert(isPresented: .constant(true )){
                    Alert(title: Text("BetaHealth"), message: Text(error), dismissButton: .default(Text("OK")))
                    
                    //se der erro aparece um alerta
                    //colocar algo para se der o alerta
                }

            }
            

            
        }
    }
}


#Preview {
    let viewModel = SplashViewModel()
    SplashView(viewModel: viewModel)
}
