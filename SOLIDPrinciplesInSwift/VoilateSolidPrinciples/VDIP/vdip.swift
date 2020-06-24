//
//  vdip.swift
//  SOLIDPrinciplesInSwift
//
//  Created by shiva kumar on 24/6/20.
//  Copyright © 2020 shiva kumar. All rights reserved.
//

import Foundation

class FileSystemManager {
    
    public func save(arr: [String]?) -> Bool {
        
        return true
    }
}

class VDIPHandler {
    
    let rh: VDIPRequestHandler
    let ph: VDIPParseHandler
    let fsm: FileSystemManager
    
    var _data: Data?
    var _array: [String]?
    var _result: Bool?
    
    init(rh: VDIPRequestHandler, ph:VDIPParseHandler, fsm:FileSystemManager) {
        self.rh = rh
        self.ph = ph
        self.fsm = fsm
    }
    
    public func handle() {
        _data = rh.requestDataFromAPI()
        _array = ph.parseData(data: _data)
        _result = fsm.save(arr: _array)
    }
}

class VDIPRequestHandler {
    
    public func requestDataFromAPI() -> Data {
        
        return Data()
    }
}

class VDIPParseHandler {
    
    public func parseData(data: Data?) -> [String] {
        
        return []
    }
}

