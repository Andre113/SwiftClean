//
//  PostModel.swift
//  CleanSwiftStart
//
//  Created by Taggli on 02/08/2018.
//  Copyright © 2018 AndreOta. All rights reserved.
//

import UIKit

protocol PostModel {
    var id: Int! { get }
    var userId: Int? { get }
    var title: String? { get }
    var body: String? { get }
}

struct PostModelFields: PostModel {
    let id: Int!
    let userId: Int?
    let title: String?
    let body: String?
}
