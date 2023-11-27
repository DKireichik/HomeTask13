//
//  ViewController.swift
//  HomeTask13
//
//  Created by Darya on 23.11.23.
//

import UIKit
   
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    var tableView = UITableView()
    
     
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.addSubview(tableView)
 
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = Footer()
        tableView.tableHeaderView = Header()
        tableView.tableFooterView?.frame.size = CGSize(width: tableView.frame.width, height: CGFloat(40))
        tableView.tableHeaderView?.frame.size = CGSize(width: tableView.frame.width, height: CGFloat(120))
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = TableViewCell()
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
 
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
}

