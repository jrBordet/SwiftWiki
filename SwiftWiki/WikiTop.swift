//
//  WikiTop.swift
//  SwiftWiki
//
//  Created by Jean Raphael Bordet on 09/02/2017.
//  Copyright © 2017 Jean Raphael Bordet. All rights reserved.
//

import Foundation
import ObjectMapper

struct WikiTop: Mappable {
    var id: String?
    var title: String?
    var url: String?
    
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        id      <- map["id"]
        title   <- map["title"]
        url     <- map["url"]
    }
}

//extension WikiTop: Mappable {
//    
//    init?(map: Map) {
//    }
//    
//    mutating func mapping(map: Map) {
//        id      <- map["id"]
//        title   <- map["title"]
//        url     <- map["url"]
//    }
//}
