//
//  WikiTopApiService.swift
//  SwiftWiki
//
//  Created by Jean Raphael Bordet on 09/02/2017.
//  Copyright © 2017 Jean Raphael Bordet. All rights reserved.
//

import Foundation
import RxSwift
import Alamofire
import AlamofireObjectMapper
import ObjectMapper

class WikiTopApiService: WikiTopApiServiceProtocol {
    public func fetchWikiTop() -> Observable<[WikiTop]> {
        return Observable<[WikiTop]>.create { observer -> Disposable in
            let request = Alamofire
                .request("http://www.wikia.com/api/v1/Wikis/List?expand=1&lang=en&batch=1", method: .get)
                .validate()
                .responseJSON(queue: nil, completionHandler: { response in
                    guard let value = response.result.value as? [String: Any], let items = value["items"] as? [Any] else {
                        print("Malformed data received from fetchAllRooms service")
                        return
                    }
                    
                    let i = items.flatMap({ (item) -> WikiTop? in
                        print(item)
                        guard let desc = item["desc"] as? String else {
                            return nil
                        }
                        print(desc)
                        return nil
                    })
                    
                    print(i)
                    
//                    for o in items {
//                        print(o)
//                       
//                       // print(object)
//
//                    }
                    
//                    if let array = items as? [Any] {
//                        for object in array {
//                           //let desc = object["desc"]
//                            // access all objects in array
//                           // let wiki = WikiTop(map: object)
//
//                            print(object)
//                        }
//                    }
                })
            
            
            //                .responseJSON(completionHandler: { response in
            //                    if let json = response.result.value {
            //                        print(json)
            //                    }
            //                })
            
            
            //                .responseArray(completionHandler: { (response: DataResponse<[WikiTop]>) in
            //                    switch response.result {
            //                    case .success(let articles):
            //                        observer.onNext(articles)
            //                        observer.onCompleted()
            //
            //                    case .failure(let error):
            //                        observer.onError(error)
            //                    }
            //                })
            return Disposables.create(with: {
                request.cancel()
            })
        }
    }
}
