//
//  vsrp.swift
//  SOLIDPrinciplesInSwift
//
//  Created by shiva kumar on 23/6/20.
//  Copyright © 2020 shiva kumar. All rights reserved.
//

import Foundation

class VSPHandler {
    
    var _data: Data?
    var _array: [String]?
    var _result: Bool?
    
    public func handle() {
        _data = requestDataFromAPI()
        _array = parseData(data: _data)
        _result = saveToDB(arr: _array)
    }
    
    private func requestDataFromAPI() -> Data {
        
        return Data()
    }
    
    private func parseData(data: Data?) -> [String] {
        
        return []
    }
    
    private func saveToDB(arr: [String]?) -> Bool {
        
        return true
    }
}
