//
//  SignUpView.swift
//  BetaHealth
//
//  Created by Baruch on 19/03/25.
//
import SwiftUI

struct SignUpView: View {
    @ObservedObject var viewModel: SignUpViewModel
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.loading, .purple.opacity(0.4)]),
                           startPoint: .bottom,
                           endPoint: .topLeading)
            .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center){
                
                
                registerSignUp
                nickSignUp
                emailSignUp
                passwordSignUp
                confirmPassswordSignUp
                bottomSignUp
                
                HStack{
                    Text("Já tem uma conta?")
                        .font(.system(size: 18, weight: .light, design: .rounded))
                        .foregroundColor(.black)
                    
                    Button(action: {
                        print("Clique1")
                    }) {
                        Text("Clique aqui para fazer login.")
                            .font(.system(size: 18, weight: .light, design: .rounded))
                            .foregroundColor(.white)
                            .bold()
                    }
                    
                }
            }
        }
    }
}
extension SignUpView {
    var registerSignUp: some View {
        Text("Registre-se")
            .font(.system(size: 50, weight: .bold, design: .rounded))
            .foregroundStyle(
                LinearGradient(
                    colors: [.purple, .blue, .loading],
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
            .bold(true)
            .padding(.bottom, 100)
            .shadow(
                color: Color.primary.opacity(0.9),
                    radius: 1,
                    x: 0,
                    y: 2
                )
        
    }
}

extension SignUpView {
    var nickSignUp: some View {
        VStack {
            TextField("Nickname", text: $viewModel.nick)
                .autocapitalization(.none)
                .autocorrectionDisabled(true)
                .padding()
                .frame(width: 350, height: 50)
                .background(Color.white)
                .cornerRadius(28)
                .overlay(RoundedRectangle(cornerRadius: 28)
                    .strokeBorder(Color.black,
                                  style: StrokeStyle(lineWidth: 1)))
                .padding(.horizontal)
                .padding(.bottom, 12)
            
        }
    }
}
extension SignUpView {
    var emailSignUp: some View {
        VStack {
            TextField("Email", text: $viewModel.email)
                .autocapitalization(.none)
                .autocorrectionDisabled(true)
                .padding()
                .frame(width: 350, height: 50)
                .background(Color.white)
                .cornerRadius(28)
                .overlay(RoundedRectangle(cornerRadius: 28)
                    .strokeBorder(Color.black,
                                  style: StrokeStyle(lineWidth: 1)))
                .padding(.horizontal)
                .padding(.bottom, 12)
        }
    }
}

extension SignUpView {
    var passwordSignUp: some View {
        VStack {
            SecureField("Password", text: $viewModel.password)
                .autocapitalization(.none)
                .autocorrectionDisabled(true)
                .padding()
                .frame(width: 350, height: 50)
                .background(Color.white)
                .cornerRadius(28)
                .overlay(RoundedRectangle(cornerRadius: 28)
                    .strokeBorder(Color.black,
                                  style: StrokeStyle(lineWidth: 1)))
                .padding(.horizontal)
                .padding(.bottom, 12)
        }
    }
}

extension SignUpView {
    var confirmPassswordSignUp: some View {
        VStack {
            SecureField("Confirm the Password", text: $viewModel.confirmPassword)
                .autocapitalization(.none)
                .autocorrectionDisabled(true)
                .padding()
                .frame(width: 350, height: 50)
                .background(Color.white)
                .cornerRadius(28)
                .overlay(RoundedRectangle(cornerRadius: 28)
                    .strokeBorder(Color.black,
                                  style: StrokeStyle(lineWidth: 1)))
                .padding(.horizontal)
                .padding(.bottom, 20)
        }
    }
}




extension SignUpView {
    var bottomSignUp: some View {
        VStack {
            Button(action: {
                viewModel.signUp()
            }) {
                Text("Sign Up")
                    .padding()
                    .font(.system(size: 28, weight: .bold, design: .default))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .shadow(radius: 6)
                    .background(Color.blue)
                    .overlay(RoundedRectangle(cornerRadius: 28)
                        .strokeBorder(Color.black.opacity(0.3),
                                  style: StrokeStyle(lineWidth: 1)))
                    .cornerRadius(28)
                    .padding(.horizontal, 30)
                    .padding(.bottom, 20)
                    
            }
        }
    }
}


#Preview {
    SignUpView(viewModel: SignUpViewModel())
}

