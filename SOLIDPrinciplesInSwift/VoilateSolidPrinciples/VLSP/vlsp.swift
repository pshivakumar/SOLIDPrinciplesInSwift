//
//  vlsp.swift
//  SOLIDPrinciplesInSwift
//
//  Created by shiva kumar on 23/6/20.
//  Copyright © 2020 shiva kumar. All rights reserved.
//

import Foundation

class VLSPFileHandler {

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

class VLSPNetHandler:VLSPFileHandler {

    var port: UInt
    
    override var _path: String {
        return super._location + String(port)
    }
    
    init(data:Data, handleId:UInt, location:String, port: UInt) {
        self.port = port
        super.init(data: data, handleId: handleId, location: location)
    }
}
