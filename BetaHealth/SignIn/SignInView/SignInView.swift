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
            LinearGradient(gradient: Gradient(colors: [.loading, .blue.opacity(0.3)]),
                           startPoint: .bottom,
                           endPoint: .topLeading)
            .edgesIgnoringSafeArea(.all)
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
                
                forgotPassword
                
                signInButton
                
                signUpMessage
                
                
            }
        }
    }
}

extension SignInView {
    var emailField: some View {
        TextField("Login / Email", text: $viewModel.email)
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
        SecureField(("Senha"), text: $viewModel.password)
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
        Button(action: {
            print("Signing in...")
        }) {
            Text("Entrar")
                .bold()
                .font(.headline)
                .frame(maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .frame(width: 300, height: 50)
                .overlay(RoundedRectangle(cornerRadius: 28)
                    .strokeBorder(Color.black,
                                  style: StrokeStyle(lineWidth: 1)))
                .background(Color.blue)
                .cornerRadius(28)
                .shadow(radius: 1)
                .padding(.bottom)
        }
    }
}

extension SignInView {
    var forgotPassword: some View {
        HStack {
            Text("Esqueceu sua senha?")
                .foregroundColor(.black)
            Link(destination: URL(string: "https://www.google.com")!) {
                Text("Recuperar senha")
                    .foregroundColor(.black)
                    .bold(true)
            }
        }
    }
}

extension SignInView {
    var signUpMessage: some View {
        HStack {
            Text("Não possui uma conta?")
                .foregroundColor(.black)
            Link(destination: URL(string: "https://www.google.com")!) {
                Text("Cadastre-se aqui")
                    .foregroundColor(.white)
                    .bold(true)
            }
        }
        
        }
    }

#Preview {
    SignInView()
}
