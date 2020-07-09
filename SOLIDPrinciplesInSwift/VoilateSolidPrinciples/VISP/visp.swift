//
//  visp.swift
//  SOLIDPrinciplesInSwift
//
//  Created by shiva kumar on 24/6/20.
//  Copyright © 2020 shiva kumar. All rights reserved.
//

import Foundation

protocol GenericHandler {
    func encryptFile(key: String) -> Data?
    func encryptNetRequest(token: String) -> URLRequest?
}

class VISPFileHandler:GenericHandler {

    
    var _data: Data
    var _handleId: UInt
    var _location: String

    
    init(data:Data, handleId:UInt, location:String) {
        self._data = data
        self._handleId = handleId
        self._location = location
    }

    func encryptFile(key: String) -> Data? {
        
        return Data()
    }
    
    func encryptNetRequest(token: String) -> URLRequest? {
        // NOT Required to be implemented in File Handler, Violate SOLID ISP
        return nil
    }
}

class VISPNetHandler:GenericHandler {
        
    var _data: Data
    var _handleId: UInt
    var _location: String
    var port: UInt
    
    init(data:Data, handleId:UInt, location:String, port: UInt) {
        self._data = data
        self._handleId = handleId
        self._location = location
        self.port = port
    }
    
    func encryptFile(key: String) -> Data? {
        // NOT Required to be implemented in Net Handler, Violates SOLID ISP
        
        return nil
    }
    
    func encryptNetRequest(token: String) -> URLRequest? {
        
        return URLRequest(url: URL(string: "https://abc.com")!)
    }
}
