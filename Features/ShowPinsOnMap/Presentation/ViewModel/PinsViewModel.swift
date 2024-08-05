//
//  PinsViewModel.swift
//  Naveller
//
//  Created by Paul on 04/08/2024.
//

import Foundation

class PinsViewModel: ObservableObject {
    
  var pins: [Pin] = []
    
    let pinsRepository: PinDataRepository
    
    init(pinsRepository: PinDataRepository) {
        self.pinsRepository = pinsRepository
        
        fetchPins()
    }
    
    //Methods
    
    public func fetchPins() {
       
        Task {
            await pins = pinsRepository.fetchAllPins()
        }
    }
}
