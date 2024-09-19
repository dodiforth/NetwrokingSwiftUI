//
//  ContentView.swift
//  NetworkingStudy
//
//  Created by Dowon Kim on 03/09/2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = CoinsViewModel()
    
    var body: some View {
        VStack {
            Text("\(viewModel.coin) : \(viewModel.price)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
