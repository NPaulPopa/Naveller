//
//  MemoryPinStorage.swift
//  Naveller
//
//  Created by Paul on 04/08/2024.
//

import Foundation

public class MemoryPinStorageDataSource: PinDataRepository {
    
    let pins = [
        
        Pin(id: "1", latitude: 1.1, longitude: 1.55, title: "Cafe W", description: "coffe shop", icon: "https://icon.me"),
        Pin(id: "2", latitude: 2.1, longitude: 2.55, title: "Italian Bistro", description: "italian", icon: "https://icon.me"),
    ]
    
    public func fetchAllPins() async -> [Pin] {
       // try! await Task.sleep(nanoseconds: 30_000_000)
        return pins
    }
}
