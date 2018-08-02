//
//  PostsWorker.swift
//  CleanSwiftStart
//
//  Created by Taggli on 02/08/2018.
//  Copyright © 2018 AndreOta. All rights reserved.
//

import UIKit

class PostsWorker {
    var postsStore: PostsStoreProtocol
    
    init(postsStore: PostsStoreProtocol){
        self.postsStore = postsStore
    }
    
    func fetchPosts(completionHandler: @escaping([PostModel], PostsStoreError?) -> Void) {
        postsStore.fetchPosts { (posts, error) in
            completionHandler(posts, error)
        }
    }
}

//MARK: - Posts store API
protocol PostsStoreProtocol {
    //    MARK: - CRUD Operations - Optional error
    func fetchPosts(completionHandler: @escaping([PostModel], PostsStoreError?) -> Void)
    func fetchPost(completionHandler: @escaping(PostModel?, PostsStoreError?) -> Void)
}

protocol PostsStoreUtilityProtocol {}

extension PostsStoreUtilityProtocol {
}

//MARK: - Posts store CRUD operation errors
enum PostsStoreError: Equatable, Error {
    case CannotFetch(String)
    case CannotCreate(String)
    case CannotUpdate(String)
    case CannotDelete(String)
}
