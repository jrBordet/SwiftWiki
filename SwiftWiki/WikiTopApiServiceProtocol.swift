//
//  WikiTopApiServiceProtocol.swift
//  SwiftWiki
//
//  Created by Jean Raphael Bordet on 14/02/2017.
//  Copyright © 2017 Jean Raphael Bordet. All rights reserved.
//

import Foundation
import RxSwift

protocol WikiTopApiServiceProtocol {
    func fetchWikiTop() -> Observable<[WikiTop]>
}
