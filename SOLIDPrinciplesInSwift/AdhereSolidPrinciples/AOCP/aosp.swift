//
//  aosp.swift
//  SOLIDPrinciplesInSwift
//
//  Created by shiva kumar on 23/6/20.
//  Copyright © 2020 shiva kumar. All rights reserved.
//

import Foundation

import Foundation

protocol Printable {
    func printDetails() -> String
}
class ASPLogger {
    
    public func printLog() {
        
        let handlers:[Printable] = [ ASPFileHandler(data: Data(), fileid: 1001, fileLocation: "loc1"),
                                     ASPFileHandler(data: Data(), fileid: 1002, fileLocation: "loc2"),
                                     ASPNetHandler(data: Data(), sessionId: "abcd", url: URL(string: "https://abc.com")),
                                     ASPNetHandler(data: Data(), sessionId: "abcd", url: URL(string: "https://abc.com"))]
        
        for hd in handlers {
            print(hd.printDetails())
        }
        
    }
}

class ASPFileHandler:Printable {

    var _data: Data
    var _fileId: UInt
    var _fileLocation: String
    
    init(data:Data, fileid:UInt, fileLocation:String) {
        self._data = data
        self._fileId = fileid
        self._fileLocation = fileLocation
    }
    func printDetails() -> String {
         return (" File Handler location is \(_fileLocation))")
    }
}

class ASPNetHandler:Printable {

    var _data: Data
    var _sessionId: String
    var _url: URL?
    
    init(data:Data, sessionId:String, url:URL?) {
        self._data = data
        self._sessionId = sessionId
        self._url = url
    }
    
    func printDetails() -> String {
        return ("Net Handler session id is \(_sessionId)")
    }
}
