//
//  PinDataRepository.swift
//  Naveller
//
//  Created by Paul on 04/08/2024.
//

import Foundation

public protocol PinDataRepository {
    
    func fetchAllPins() async -> [Pin]
}
