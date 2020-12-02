//
//  HomeViewController.swift
//  Fundamentos1
//
//  Created by Marc Perelló Sapiña on 30/11/20.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    private var friends: Friends = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
        
        tableView.dataSource = self
        tableView.delegate = self
        //tableView?.reloadData()
        
        
    }
    
    private func loadData() {
        friends = [Friend(image: "img_rachel", name: "Rachel", lastname: "Green", score: 9.0),
                   Friend(image: "img_joey", name: "Joey", lastname: "Tribbiani", score: 8.0),
                   Friend(image: "img_monica", name: "Monica", lastname: "Geller", score: 8.0),
                   Friend(image: "img_ross", name: "Ross", lastname: "Geller", score: 7.5),
                   Friend(image: "img_chandler", name: "Chandler", lastname: "Bing", score: 9.0),
                   Friend(image: "img_phoebe", name: "Phoebe", lastname: "Buffay", score: 6.0)]
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 146.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCellView", for: indexPath) as? FriendCellView
        
        if(indexPath.row < friends.count) {
            cell?.configureViews(friend: friends[indexPath.row])
        }
        
        return cell ?? UITableViewCell()
    }
    
    
}
