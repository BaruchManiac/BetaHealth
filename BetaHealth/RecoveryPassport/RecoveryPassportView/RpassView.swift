//
//  RpassView.swift
//  BetaHealth
//
//  Created by Baruch on 19/03/25.
//
import SwiftUI

struct RpassView: View {
    @ObservedObject var viewModel: RpassViewModel
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.loading, .purple.opacity(0.4)]),
                           startPoint: .bottom,
                           endPoint: .topLeading)
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                recoveryText
                nickpass
                emailpass
                bottomBar

            }
        }
    }
}
extension RpassView {
    var recoveryText: some View {
        Text("Recover Password")
        .font(.system(size: 80, weight: .bold, design: .rounded))
        .foregroundStyle(
            LinearGradient(
                colors: [.red, .blue, .loading],
                startPoint: .leading,
                endPoint: .trailing
            )
        )
        .bold(true)
        .padding(.bottom, 80)
        .shadow(
            color: Color.primary.opacity(0.9),
                radius: 1,
                x: 0,
                y: 2
            )


        
    }
}


extension RpassView {
    var nickpass : some View {
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
                .padding(.bottom, 20)
        }
    }
}
extension RpassView {
    var emailpass : some View {
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
                .padding(.bottom, 40)
        }
    }
}

extension RpassView {
    var bottomBar: some View {
        VStack {
            Button(action: {
                viewModel.rpass()
            }) {
                Text("Recovery Password")
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
    RpassView(viewModel: RpassViewModel())
}
