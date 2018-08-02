//
//  ListPostsViewController.swift
//  CleanSwiftStart
//
//  Created by Taggli on 02/08/2018.
//  Copyright © 2018 AndreOta. All rights reserved.
//

import UIKit

protocol ListPostsDisplayLogic: class {
    func displayFetchedPosts(viewModel: ListPosts.FetchPosts.ViewModel)
}

class ListPostsViewController: UIViewController, ListPostsDisplayLogic {
    
    @IBOutlet weak var tableView: UITableView!
    
    var interactor: ListPostsBusinessLogic?
    var router: (NSObjectProtocol & ListPostsRoutingLogic & ListPostsDataPassing)?
    var displayedPosts: [ListPosts.FetchPosts.ViewModel.DisplayedPost] = []
    
    //    MARK: - Object lifecycle
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    //    MARK: - Setup
    func setup(){
        let viewController = self
        let interactor = ListPostsInteractor()
        let presenter = ListPostsPresenter()
        let router = ListPostsRouter()
        
        viewController.interactor = interactor
        viewController.router = router
        
        interactor.presenter = presenter
        
        presenter.viewController = self
        router.viewController = self
        router.dataStore = interactor
    }
    
    //    MARK: - View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchPosts()
    }
    
    //    MARK: - Layout
    func configTableView(){
        
    }
    
    //    MARK: - Fetch posts
    func fetchPosts(){
        let request = ListPosts.FetchPosts.Request()
        interactor?.fetchPosts(request: request)
    }
    
    func displayFetchedPosts(viewModel: ListPosts.FetchPosts.ViewModel) {
        displayedPosts = viewModel.displayedPosts
        print(displayedPosts.count)
    }
}
