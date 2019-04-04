//
//  Engine.swift
//  CarEngine
//
//  Created by Roger Kislig on 05.11.17.
//  Copyright © 2017 approppo. All rights reserved.
//

import UIKit

class Engine: NSObject {

    var isRunning = false
    var petrol = 60.0
    var enginePieces: [Any]? = [Any]()
    
    func start() {
        isRunning = true
    }
    
    func stop() {
        isRunning = false
    }
    
    func addValves(_ valves: Int) {
        enginePieces?.append(valves)
    }
    
    func rpm() -> Float {
        guard isRunning else {
            return 0.0
        }
        
        // well, that rpm-calculation does not make sense now...
        if let safeEnginePieces = enginePieces {
            return Float(safeEnginePieces.count * 2000)
        }
        else {
            return 0.0
        }
    }

}
