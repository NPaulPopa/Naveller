//
//  MapPinsView.swift
//  Naveller
//
//  Created by Paul on 04/08/2024.
//

import SwiftUI

struct MapPinsView: View {
    
    @StateObject var vm = PinsViewModel(pinsRepository: MemoryPinStorageDataSource())
    
    var body: some View {
        List(vm.pins) {pin in
           
            Text(pin.title)
                .onAppear {
                    vm.fetchPins()
            }
        }
     
    }
}

#Preview {
    MapPinsView(vm: 
            .init(pinsRepository: MemoryPinStorageDataSource()))
}
