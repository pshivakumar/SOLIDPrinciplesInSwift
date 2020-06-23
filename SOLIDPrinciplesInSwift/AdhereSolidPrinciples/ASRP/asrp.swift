//
//  asrp.swift
//  SOLIDPrinciplesInSwift
//
//  Created by shiva kumar on 23/6/20.
//  Copyright © 2020 shiva kumar. All rights reserved.
//

import Foundation

class ASPHandler {
    
    var _data: Data?
    var _array: [String]?
    var _result: Bool?
    
    let reqHandler:RequestHandler
    let parseHandler:ParseHandler
    let dbHandler:DbHandler
    
    init(rh:RequestHandler, ph:ParseHandler, dh:DbHandler) {
        self.reqHandler = rh
        self.parseHandler = ph
        self.dbHandler = dh
    }

    public func handle() {
        _data = reqHandler.requestDataFromAPI()
        _array = parseHandler.parseData(data: _data)
        _result = dbHandler.saveToDB(arr: _array)
    }

}

class RequestHandler {
    
    public func requestDataFromAPI() -> Data {
        
        return Data()
    }
}

class ParseHandler {
    
    public func parseData(data: Data?) -> [String] {
        
        return []
    }
}

class DbHandler {
    
    public func saveToDB(arr: [String]?) -> Bool {
        
        return true
    }
}
