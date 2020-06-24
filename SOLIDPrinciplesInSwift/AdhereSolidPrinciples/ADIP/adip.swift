//
//  adip.swift
//  SOLIDPrinciplesInSwift
//
//  Created by shiva kumar on 24/6/20.
//  Copyright © 2020 shiva kumar. All rights reserved.
//

import Foundation

protocol Storage {
    func save(arr: [String]?) -> Bool
}

class ADIPFileSystemManager: Storage {
    
    public func save(arr: [String]?) -> Bool {
        // Save to File System
        return true
    }
}

class ADIPDBManager: Storage {
    
    public func save(arr: [String]?) -> Bool {
        // Save to DB System
        return true
    }
}

class ADIPHandler {
    
    let rh: ADIPRequestHandler
    let ph: ADIPParseHandler
    let store: Storage
    
    var _data: Data?
    var _array: [String]?
    var _result: Bool?
    
    init(rh: ADIPRequestHandler, ph:ADIPParseHandler, store:Storage) {
        self.rh = rh
        self.ph = ph
        self.store = store
    }
    
    public func handle() {
        _data = rh.requestDataFromAPI()
        _array = ph.parseData(data: _data)
        _result = store.save(arr: _array)
    }
}

class ADIPRequestHandler {
    
    public func requestDataFromAPI() -> Data {
        
        return Data()
    }
}

class ADIPParseHandler {
    
    public func parseData(data: Data?) -> [String] {
        
        return []
    }
}
