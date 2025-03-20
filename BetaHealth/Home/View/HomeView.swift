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
        Text("Hello, World!")
    }
}

#Preview {
    HomeView(viewModel: HomeViewModel())
}
