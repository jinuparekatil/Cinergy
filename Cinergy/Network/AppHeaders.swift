//
//  AppHeaders.swift
//  Cinergy
//
//  Created by Jinu on 19/01/2024.
//

import Foundation

enum BGHeaders {
    static var defaultHeaders: [String: String] = {
        let headers: [String: String] = [
            "Content-Type": "application/json",
            "Accept": "application/json",
            
        ]
        return headers
    }()
}
