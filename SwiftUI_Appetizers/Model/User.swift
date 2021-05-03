//
//  User.swift
//  SwiftUI_Appetizers
//
//  Created by Alex 6.1 on 5/3/21.
//

import Foundation

struct User: Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthDate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
}
