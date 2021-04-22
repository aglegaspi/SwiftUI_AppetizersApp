//
//  RemoteImage.swift
//  SwiftUI_Appetizers
//
//  Created by Alex 6.1 on 4/21/21.
//

import SwiftUI

final class ImageLoader: ObservableObject {
    
    // downloads image and broadcasts changes. Triggers a UI change
    @Published var image: Image? = nil
    
    func load(fromURLString urlString: String) {
        NetworkManager.shared.downloadImage(fromURLString: urlString) { uiImage in
            
            guard let uiImage = uiImage else { return }
            
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
            
        }
    }
}

struct RemoteImage: View {
    
    var image: Image?
    
    var body: some View {
        // if we have an image return that otherwise use the placeholder
        image?.resizable() ?? Image("food-placeholder").resizable()
    }
}

// images on our List view
struct AppetizerRemoteImage: View {
    
    // sees the change and redraws
    @StateObject var imageLoader = ImageLoader()
    let urlString: String
    
    var body: some View {
        RemoteImage(image: imageLoader.image)
            .onAppear { imageLoader.load(fromURLString: urlString)}
    }
}
