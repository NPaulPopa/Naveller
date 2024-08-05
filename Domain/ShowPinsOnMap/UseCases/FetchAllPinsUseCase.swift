//
//  FetchAllPins.swift
//  Naveller
//
//  Created by Paul on 04/08/2024.
//

import Foundation

public protocol FetchAllPinsUseCase {
    
    func execute() async -> [Pin]
}

public class FetchAllPinsUseCaseImplementation: FetchAllPinsUseCase {
    
    let pinDataRepository: PinDataRepository
    
    public init(pinDataRepository: PinDataRepository) {
        self.pinDataRepository = pinDataRepository
    }
    
    public func execute() async -> [Pin] {
        await pinDataRepository.fetchAllPins()
    }
}
