//
//  FriendCellView.swift
//  Fundamentos1
//
//  Created by Marc Perelló Sapiña on 1/12/20.
//

import UIKit

class FriendCellView: UITableViewCell {
    @IBOutlet var cellView: UIView?
    @IBOutlet var friendImage: UIImageView?
    @IBOutlet var name: UILabel?
    @IBOutlet var lastname: UILabel?
    @IBOutlet var score: UILabel?
 
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionStyle = .none
        
        cellView?.layer.cornerRadius = 8.0
        cellView?.layer.shadowColor = UIColor.blue.cgColor
        cellView?.layer.shadowOffset = CGSize.zero
        cellView?.layer.shadowOpacity = 0.7
        cellView?.layer.shadowRadius = 4.0
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        friendImage?.image = nil
        name?.text = nil
        lastname?.text = nil
        score?.text = "0.0"
    }
    
    func configureViews(friend: Friend) {
        friendImage?.image = UIImage(named: friend.image ?? "")
        name?.text = friend.name
        lastname?.text = friend.lastname
        score?.text = "\(friend.score)"
        
    }
}
