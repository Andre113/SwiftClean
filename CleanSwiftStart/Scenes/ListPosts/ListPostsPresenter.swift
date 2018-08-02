//
//  ListPostsPresenter.swift
//  CleanSwiftStart
//
//  Created by Taggli on 02/08/2018.
//  Copyright © 2018 AndreOta. All rights reserved.
//

import UIKit

protocol ListsPostsPresentationLogic {
    func presentFetchedPosts(response: ListPosts.FetchPosts.Response)
}

class ListPostsPresenter: ListsPostsPresentationLogic {
    
    weak var viewController: ListPostsDisplayLogic?
    
    //    MARK: - Fetch Posts
    func presentFetchedPosts(response: ListPosts.FetchPosts.Response) {
    }
}
