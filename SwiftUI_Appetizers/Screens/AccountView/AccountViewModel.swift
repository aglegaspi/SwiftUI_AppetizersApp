//
//  AccountViewModel.swift
//  SwiftUI_Appetizers
//
//  Created by Alex 6.1 on 4/26/21.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @Published var firstName = ""
    @Published var lastName = ""
    @Published var email = ""
    @Published var birthDate = Date()
    @Published var extraNapkins = false
    @Published var frequentRefills = false
}
