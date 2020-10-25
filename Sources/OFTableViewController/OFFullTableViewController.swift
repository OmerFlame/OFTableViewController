//
//  OFFullTableViewController.swift
//  
//
//  Created by Omer Shamai on 10/25/20.
//

import UIKit

open class OFFullTableViewController<T>: OFTableViewController<T>, UITableViewDelegate, UITableViewDataSource {
    public let refreshControl = UIRefreshControl()
    
    open override func loadView() {
        super.loadView()
        
        let tableView = UITableView()
        self.view.addSubview(tableView)
        self.tableView = tableView
        
        tableView.frame = self.view.bounds
        tableView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        
        tableView.dataSource = self
        tableView.delegate = self
        
        refreshControl.addTarget(self, action: #selector(fetchResults), for: .valueChanged)
        tableView.addSubview(refreshControl)
    }
    
    open override func didEndFetching() {
        super.didEndFetching()
        refreshControl.endRefreshing()
    }
}
