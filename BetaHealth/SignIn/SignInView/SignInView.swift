//
//  SignInView.swift
//  BetaHealth
//
//  Created by Baruch on 18/03/25.
//
import SwiftUI

struct SignInView: View {
    @StateObject var viewModel = SignInViewModel()
    var body: some View {
        ZStack{
            if case SignInUIState.sucess = viewModel.uiState{
                viewModel.homeView()
                
            }else{
                NavigationStack{
                    ZStack{
                        LinearGradient(gradient: Gradient(colors: [.loading, .blue.opacity(0.3)]),
                                       startPoint: .bottom,
                                       endPoint: .topLeading)
                        .edgesIgnoringSafeArea(.all)
                        
                        ScrollView(showsIndicators: false){
                            
                            VStack(alignment: .center){
                                
                                Text("Beta Health")
                                    .font(Font.system(.title, weight: .bold))
                                    .fontDesign(.serif)
                                    .foregroundColor(.blue)
                                
                                Image("Logo01")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .scaledToFit()
                                    .padding()
                                    .frame(width: 250, height: 250)
                                    .shadow(radius: 6)
                                    .padding(.bottom, 20)
                                
                                emailField
                                
                                passwordField
                                
                                signInButton
                                
                                forgotPassword
                                
                                signUpMessage
                                    .padding(.bottom,120)
                                
                                copyright
                                
                                
                            }
                        }.navigationBarTitle("Login", displayMode: .inline)
                            .navigationBarHidden(true)
                        
                        
                        if case SignInUIState.error(let value) = viewModel.uiState {
                            Text("")
                                .alert(isPresented: .constant(true )){
                                    Alert(title: Text("BetaHealth"), message: Text(value), dismissButton: .default(Text("OK")))
                                }
                        }
                    }
                }
                
            }
            
        }
    }
}

extension SignInView {
    var emailField: some View {
        TextField("🥷 | 📧   Nick / Email", text: $viewModel.email)
            .autocapitalization(.none)
            .disableAutocorrection(true)
            .padding()
            .background(Color.white)
            .cornerRadius(28)
            .overlay(RoundedRectangle(cornerRadius: 28)
                .strokeBorder(Color.black,
                              style: StrokeStyle(lineWidth: 1)))
            .shadow(radius: 1)
            .padding(.horizontal)
            .padding(.bottom, 10)
    }
}

extension SignInView {
    var passwordField: some View {
        SecureField(("🔐 Senha"), text: $viewModel.password)
            .autocapitalization(.none)
            .disableAutocorrection(true)
            .padding()
            .background(Color.white)
            .cornerRadius(28)
            .overlay(RoundedRectangle(cornerRadius: 28)
                .strokeBorder(Color.black,
                              style: StrokeStyle(lineWidth: 1)))
            .shadow(radius: 1)
            .padding(.horizontal)
            .padding(.bottom, 10)
    }
}

extension SignInView {
    var signInButton: some View {
        Button("Entrar") {
            viewModel.login(email: "email", password: "password")
                
            }   .bold()
                .font(.headline)
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .frame(width: 300, height: 50)
                .overlay(RoundedRectangle(cornerRadius: 28)
                    .strokeBorder(Color.black.opacity(0.3),
                                  style: StrokeStyle(lineWidth: 1)))
                .background(Color.blue)
                .cornerRadius(28)
                .shadow(radius: 1)
                .padding(.bottom)
                .padding(.top, 20)
                .padding(.bottom, 10)
    }
}

extension SignInView {
    var forgotPassword: some View {
        HStack {
            Text("Esqueceu sua senha?")
                .foregroundColor(.black)
            ZStack {
                NavigationLink(destination: RpassView(viewModel:     RpassViewModel()), label: {
                    Text("Recupere sua senha")
                        .foregroundColor(.black)
                        .bold(true)
                })
            }
        }
        .padding(.bottom, 20)
    }
}

extension SignInView {
    var signUpMessage: some View {
        HStack {
            Text("Não possui uma conta?")
                .foregroundColor(.black)
            
            ZStack {
                NavigationLink(destination: SignUpView(viewModel:     SignUpViewModel()), label: {
                    Text("Cadastre-se aqui")
                        .foregroundColor(.white)
                        .bold(true)
                })
            }
        }
        
        }
    }

extension SignInView {
    var copyright: some View {
        VStack{
            Text("Copyright ©2025 Baruch S/A")
                .foregroundColor(.black.opacity(0.4))
                .font(Font.system(size: 13))
        }
    }
}

#Preview {
    SignInView()
}
