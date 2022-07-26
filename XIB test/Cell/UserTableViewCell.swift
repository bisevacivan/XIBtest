//
//  UserTableViewCell.swift
//  XIB test
//
//  Created by Ivan Bisevac on 26.7.22..
//

import UIKit

class UserTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    
    @IBOutlet weak var photoView: UIImageView!
    @IBOutlet weak var userLabel: UILabel!
    
    // MARK: - Vars & Lets
    
    static let cellId = "UserTableViewCell"
    
    // MARK: - Public Methods
    
    func setup(user: String) {
<<<<<<< Updated upstream
        self.backgroundColor = .orange
=======
        self.selectionStyle = .none
>>>>>>> Stashed changes
        self.userLabel.text = user
        
        
    }
    
}
