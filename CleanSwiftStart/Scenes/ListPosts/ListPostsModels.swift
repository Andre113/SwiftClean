//
//  ListPostsModels.swift
//  CleanSwiftStart
//
//  Created by Taggli on 02/08/2018.
//  Copyright © 2018 AndreOta. All rights reserved.
//

import UIKit

enum ListPosts {
    //    MARK: - Use cases
    
    enum FetchPosts {
        struct Request {
            
        }
        
        struct Response {
            var posts: [PostModel]
        }
        
        struct ViewModel {
            struct DisplayedPost {
                var id: Int
                var userId: Int
                var title: String
                var body: String
            }
            
            var displayedPosts: [DisplayedPost]
        }
    }
}
