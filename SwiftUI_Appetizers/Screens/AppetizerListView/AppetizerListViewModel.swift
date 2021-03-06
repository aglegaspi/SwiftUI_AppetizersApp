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
    @Published var alertIem: AlertItem?
    @Published var isLoading = false
    @Published var isShowingDetail = false
    @Published var selectedAppetizer: Appetizer?
    
    func getAppetizers() {
        isLoading = true
        
        NetworkManager.shared.getAppetizers { [self] (result) in
            
            // switches to main thread becasuse we're updating appetizers which is a UI update
            DispatchQueue.main.async {
                isLoading = false
                
                switch result {
                
                case .success(let appetizers):
                    // set the appetizers equal to the published variable, so when it changes it broadcasts its changes.
                    self.appetizers = appetizers
                    
                case .failure(let error):
                    // handle the failure cases.
                    switch error {
                    
                    case .invalidURL:
                        alertIem = AlertContext.invalidURL
                        
                    case .invalidResponse:
                        alertIem = AlertContext.invalidResponse
                        
                    case .invalidData:
                        alertIem = AlertContext.invalidData
                        
                    case .unableToComplete:
                        alertIem = AlertContext.unableToComplete
                    } // error
                } //switch result
                
            } //DispatchQueue.main.async
            
        } //NetworkManager.shared.getAppetizers
    } //getAppetizers
    
} //class

