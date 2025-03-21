//
//  HomeView.swift
//  BetaHealth
//
//  Created by Baruch on 20/03/25.
//
import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [.orange, .blue], startPoint: .bottomLeading, endPoint: .topLeading)
                .edgesIgnoringSafeArea(.all)
            VStack{
                TextField("Modelo de negocio", text: .constant(true ? " " : ""))
                    .padding()
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 28).stroke(style: StrokeStyle(lineWidth: 1)))
                    .background(Color.white)
                    .cornerRadius(28)
                
                       
                
                       
            }
        }
    }
    
}

#Preview {
    HomeView(viewModel: HomeViewModel())
}
