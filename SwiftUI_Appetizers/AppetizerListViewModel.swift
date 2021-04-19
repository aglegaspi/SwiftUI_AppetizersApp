//
//  AppetizerListViewModel.swift
//  SwiftUI_Appetizers
//
//  Created by Alex 6.1 on 4/15/21.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    
    // broadcasts when property changes
    @Published var appetizers: [Appetizer] = []
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers { (result) in
            
            // switches to main thread becasuse we're updating appetizers which is a UI update
            DispatchQueue.main.async {
                
                switch result {
                case .success(let appetizers):
                    // set the appetizers equal to the published variable, so when it changes it broadcasts its changes.
                    self.appetizers = appetizers
                case .failure(let error):
                    print(error.localizedDescription)
                }
                
            }
            
        }
    }
    
}

