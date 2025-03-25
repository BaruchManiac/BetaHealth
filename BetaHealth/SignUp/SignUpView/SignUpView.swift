//
//  SignUpView.swift
//  BetaHealth
//
//  Created by Baruch on 19/03/25.
//
import SwiftUI

struct SignUpView: View {
    @ObservedObject var viewModel: SignUpViewModel
    
    @State private var gender : String = "Masculino"
    @State private var goToSignIn = false
    @State private var sucess = false
    
    
    var body: some View {
        if case SignUpUIState.goToSignInScreen = viewModel.uiState{
            viewModel.signinView()
        }else{
            
            
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.loading, .purple.opacity(0.4)]),
                               startPoint: .bottom,
                               endPoint: .topLeading)
                .edgesIgnoringSafeArea(.all)
                

                ScrollView(showsIndicators: false){
                    
                    VStack(alignment: .center){
                        
                        
                        registerSignUp
                        nickSignUp
                        emailSignUp
                        passwordSignUp
                        confirmPassswordSignUp
                        genderField
                        bottomSignUp
                        signInLink
                        
                    }
                }.navigationTitle(Text("Sign Up"))
                
                if case SignUpUIState.error(let value) = viewModel.uiState {
                    Text("")
                        .alert(isPresented: .constant(true )){
                            Alert(title: Text("BetaHealth"), message: Text(value), dismissButton: .default(Text("OK")))
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
            .padding(.top, 20)
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
            TextField("🥷 Nickname", text: $viewModel.nick)
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
            TextField("📧 Email", text: $viewModel.email)
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
                .padding(.bottom, 10)
        }
    }
}

extension SignUpView {
    var passwordSignUp: some View {
        VStack {
            SecureField("🔐 Password", text: $viewModel.password)
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
                .padding(.bottom, 10)
        }
    }
}

extension SignUpView {
    var confirmPassswordSignUp: some View {
        VStack {
            SecureField("🔐 Confirm the Password", text: $viewModel.confirmPassword)
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
                .padding(.bottom, 10)
        }
    }
}




extension SignUpView {
    var bottomSignUp: some View {
        VStack {
            Button(action: {
                viewModel.signinreturn()
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

extension SignUpView {
    var signInLink: some View {
        HStack{
            Text("Já tem uma conta?")
                .font(.system(size: 18, weight: .light, design: .rounded))
                .foregroundColor(.black)
            
            Button(action: {
                viewModel.signinreturn()
            }) {
                Text("Clique Aqui.")
                    .font(.system(size: 18, weight: .light, design: .rounded))
                    .foregroundColor(.white)
                    .bold()
            }
            
        }
    }
}
extension SignUpView {
    var genderField: some View {
        VStack{
            Text("Informe o seu Sexo:")
                .font(.system(size: 20, weight: .light, design: .rounded))
                .bold(true)
                .foregroundColor(.black)

            Picker("Gender", selection: $gender) {
                ForEach(Gender.allCases, id: \.self) {
                    value in
                    Text(value.rawValue)
                        .tag(value)
                }
            }.pickerStyle(InlinePickerStyle())
                .frame(width: 300, height: 110)
        }
   }
}

#Preview {
    SignUpView(viewModel: SignUpViewModel())
}

