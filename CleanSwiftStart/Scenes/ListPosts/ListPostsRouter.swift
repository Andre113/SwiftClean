//
//  ListPostsRouter.swift
//  CleanSwiftStart
//
//  Created by Taggli on 02/08/2018.
//  Copyright © 2018 AndreOta. All rights reserved.
//

import UIKit

@objc protocol ListPostsRoutingLogic {
    func routeToShowPost(segue: UIStoryboardSegue?)
    func routeToCreatePost(segue: UIStoryboardSegue)
}

protocol ListPostsDataPassing {
    var dataStore: ListPostsDataStore? { get }
}

class ListPostsRouter: NSObject, ListPostsRoutingLogic, ListPostsDataPassing {
    weak var viewController: ListPostsViewController?
    var dataStore: ListPostsDataStore?
    
    //    MARK: - Routing
    func routeToShowPost(segue: UIStoryboardSegue?) {
        
    }
    
    func routeToCreatePost(segue: UIStoryboardSegue) {
        
    }
}
