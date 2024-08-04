//
//  Pin.swift
//  Naveller
//
//  Created by Paul on 04/08/2024.
//

import Foundation

public struct Pin: Identifiable {
    
    public let id: String
    let latitude: Double
    let longitude: Double
    let title: String
    let description: String?
    let icon: String?
}
