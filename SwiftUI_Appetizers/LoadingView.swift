//
//  LoadingView.swift
//  SwiftUI_Appetizers
//
//  Created by Alex 6.1 on 4/19/21.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
        let activityIndictorView = UIActivityIndicatorView(style: .large)
        activityIndictorView.color = UIColor.brandPrimary
        activityIndictorView.startAnimating()
        return activityIndictorView
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
    
    }
    
}


struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            ActivityIndicator()
        }
    }
}
