//
//  ImageView.swift
//  NetworkingStudy
//
//  Created by Dowon Kim on 23/10/2024.
//

import SwiftUI

struct ImageView: View {
    @ObservedObject var imageLoader: ImageLoader
    
    init(url: String) {
        imageLoader = ImageLoader(url: url)
    }
    
    var body: some View {
        if let image = imageLoader.image {
            image
                .resizable()
                .frame(width: 32, height: 32)
        }
    }
}

#Preview {
    ImageView(url: "https://assets.coingecko.com/coins/images/1/large/bitcoin.png")
}
