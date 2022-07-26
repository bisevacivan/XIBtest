//
//  ViewController.swift
//  XIB test
//
//  Created by Ivan Bisevac on 26.7.22..
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - Outlets
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Vars & Lets
    
    let user = ["Ivan Upgrade", "Lazar Upgrade", "Milos Upgrade", "Nemanja Upgrade", "Uros Upgrade", "Filip Upgrade", "Veljko Upgrade"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupUI()
    }
    
    // MARK: - Private Methods
    
    private func setupUI() {
        self.tableView.register(UINib (nibName: UserTableViewCell.cellId, bundle: nil),
                                forCellReuseIdentifier: UserTableViewCell.cellId)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
    }
    
    //MARK: - TableView Delegate & DataSource methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return user.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: UserTableViewCell.cellId, for: indexPath) as! UserTableViewCell
        let user = user[indexPath.row]
        cell.backgroundColor = .orange
        cell.setup(user: user)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 420
    }
    
}

