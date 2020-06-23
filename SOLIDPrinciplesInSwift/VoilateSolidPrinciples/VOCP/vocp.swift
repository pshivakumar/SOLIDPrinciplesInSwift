//
//  vocp.swift
//  SOLIDPrinciplesInSwift
//
//  Created by shiva kumar on 23/6/20.
//  Copyright © 2020 shiva kumar. All rights reserved.
//

import Foundation

class VSPLogger {
    
    public func printLog() {
        
        let fileHandlers = [ VSPFileHandler(data: Data(), fileid: 1001, fileLocation: "loc1"),
                             VSPFileHandler(data: Data(), fileid: 1002, fileLocation: "loc2") ]
        
        for fh in fileHandlers {
            print(" File Handler location is \(fh._fileLocation))")
        }
        
        let netHandlers = [ VSPNetHandler(data: Data(), sessionId: "abcd", url: URL(string: "https://abc.com")),
                            VSPNetHandler(data: Data(), sessionId: "abcd", url: URL(string: "https://abc.com")) ]
        
        for nh in netHandlers {
            print("Net Handler session id is \(nh._sessionId)")
        }
    }
    
}

class VSPFileHandler {
    
    var _data: Data
    var _fileId: UInt
    var _fileLocation: String
    
    init(data:Data, fileid:UInt, fileLocation:String) {
        self._data = data
        self._fileId = fileid
        self._fileLocation = fileLocation
    }
}

class VSPNetHandler {
    
    var _data: Data
    var _sessionId: String
    var _url: URL?
    
    init(data:Data, sessionId:String, url:URL?) {
        self._data = data
        self._sessionId = sessionId
        self._url = url
    }
}
