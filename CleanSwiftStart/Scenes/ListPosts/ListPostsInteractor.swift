//
//  ListPostsInteractor.swift
//  CleanSwiftStart
//
//  Created by Taggli on 02/08/2018.
//  Copyright © 2018 AndreOta. All rights reserved.
//

import UIKit

protocol ListPostsBusinessLogic {
    func fetchPosts(request: ListPosts.FetchPosts.Request)
}

protocol ListPostsDataStore {
    var posts: [PostModel]? { get }
}

class ListPostsInteractor: ListPostsBusinessLogic, ListPostsDataStore {
    var presenter: ListsPostsPresentationLogic?
    var postsWorker = PostsWorker(postsStore: PostsAPI())
    
    var posts: [PostModel]?
    
    func fetchPosts(request: ListPosts.FetchPosts.Request) {
        postsWorker.fetchPosts { (posts, error) in
            self.posts = posts
            
            let response = ListPosts.FetchPosts.Response(posts: posts)
            self.presenter?.presentFetchedPosts(response: response)
        }
    }
}
