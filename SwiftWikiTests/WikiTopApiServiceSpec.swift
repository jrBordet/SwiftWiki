//
//  WikiTopApiServiceSpec.swift
//  SwiftWiki
//
//  Created by Jean Raphael Bordet on 10/02/2017.
//  Copyright © 2017 Jean Raphael Bordet. All rights reserved.
//

import Foundation
@testable import SwiftWiki
//@testable import WikiTopApiService

import Quick
import Nimble
import RxSwift
import Alamofire
import AlamofireObjectMapper
//import WikiTopApiService

class WikiTopApiServiceSpec: QuickSpec {
    override func spec() {
        
        describe("fetchWikiTop", {
            context("Server request successful", {
                //var disposeBag = DisposeBag()
                
                let service: WikiTopApiServiceProtocol =  WikiTopApiService()
                
                let subscription = service
                    .fetchWikiTop()
                    .subscribe({event in
                        print(event)
                    })
                
                
                //subscription.dispose()
                
                //                WikiTopApiService
                //                    .fetchWikiTop()
                //                    .subscribe()
                
                //                Alamofire.request("http://gameofthrones.wikia.com/api/v1/Articles/Top").responseJSON { response in
                //                    print(response.request ?? "")  // original URL request
                //                    print(response.response ?? "") // HTTP URL response
                //                    print(response.data ?? "")     // server data
                //                    print(response.result)   // result of response serialization
                //
                //                    if let JSON = response.result.value {
                //                        print("JSON: \(JSON)")
                //                    }
                //                }
                
                it("should return an array of WikiTop elements") {
                    expect(1).to(equal(2))
                }
            })
        })
    }
}
