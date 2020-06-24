//
//  aisp.swift
//  SOLIDPrinciplesInSwift
//
//  Created by shiva kumar on 24/6/20.
//  Copyright © 2020 shiva kumar. All rights reserved.
//

import Foundation

protocol FHandler {
    func encryptFile(key: String) -> Data?
}

protocol NHandler {
    func encryptNetRequest(token: String) -> URLRequest?
}

class AISPFileHandler:FHandler {

    
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
}

class AISPNetHandler:NHandler {
        
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
        
    func encryptNetRequest(token: String) -> URLRequest? {
        
        return URLRequest(url: URL(string: "https://abc.com")!)
    }
}
