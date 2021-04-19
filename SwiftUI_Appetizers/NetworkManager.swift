//
//  NetworkManager.swift
//  SwiftUI_Appetizers
//
//  Created by Alex 6.1 on 4/15/21.
//

import Foundation

final class NetworkManager {
    
    // singleton
    static let shared = NetworkManager()
    
    static let baseURL = "https://seanallen-course-backend.herokuapp.cm/swiftui-fundamentals/"
    
    private let appetizerURL = baseURL + "appetizers"
    
    private init() {}
    
    // function completion handler that returns a result either a success array of appetizerss or failture of APError
    func getAppetizers(completed: @escaping (Result<[Appetizer], APError>) -> Void) {
        
        // check for good URL
        guard let url = URL(string: appetizerURL) else {
            completed(.failure(.invalidURL))
            return
        }
        
        // create network call to make request with good url it'll return to data, response, and error
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { (data, response, error) in
            
            // check for error i.e. lost wifi
            if let _ = error {
                completed(.failure(.unableToComplete))
                return
            }
            
            // cast the response as a HTTPURLResponse and check status code make sure it's 200
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            // check for data
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            // decode data into the model
            do {
                let decoder = JSONDecoder()
                let decodedResponse = try decoder.decode(AppetizerResponse.self, from: data)
                completed(.success(decodedResponse.request))
            } catch {
                completed(.failure(.invalidData))
            }
            
        }
        
        // fire off the network call
        task.resume()
        
    }
    
    
}
