//
//  CarEngineTests.swift
//  CarEngineTests
//
//  Created by Roger Kislig on 05.11.17.
//  Copyright © 2017 approppo. All rights reserved.
//

import XCTest
@testable import CarEngine

class CarEngineTests: XCTestCase {
    
    func testEngineIsRunning() {
        let engine = Engine()
        engine.start()
        XCTAssert(engine.isRunning, "engine should be running now")
    }

    func testEngineIsNotRunning() {
        let engine = Engine()
        engine.start()
        engine.stop()
        XCTAssert(!engine.isRunning, "engine should not be running now")
    }
    
    func testEngineRpm() {
        let engine = Engine()
        engine.addValves(8)
        engine.start()
        XCTAssertEqual(engine.rpm(), 2000.0, "engine should run 2000 RPM")
    }
}
