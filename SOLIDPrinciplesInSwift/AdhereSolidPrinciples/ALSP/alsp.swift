//
//  alsp.swift
//  SOLIDPrinciplesInSwift
//
//  Created by shiva kumar on 23/6/20.
//  Copyright © 2020 shiva kumar. All rights reserved.
//

import Foundation

protocol Path {
    var _path: String { get }
}

class ALSPFileHandler:Path {

    var _data: Data
    var _handleId: UInt
    var _location: String
    var _path: String {
        return _location
    }
    
    init(data:Data, handleId:UInt, location:String) {
        self._data = data
        self._handleId = handleId
        self._location = location
    }

}

class ALSPNetHandler:Path {
    
    var _data: Data
    var _handleId: UInt
    var _location: String
    var port: UInt
    
    var _path: String {
        return _location + String(port)
    }
    
    init(data:Data, handleId:UInt, location:String, port: UInt) {
        self._data = data
        self._handleId = handleId
        self._location = location
        self.port = port
    }
}
