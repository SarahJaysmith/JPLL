//
//  BrowseUsersViewController.swift
//  JPLL
//
//  Created by Sarah Jaysmith on 2022-03-25.
//

import UIKit

class BrowseUsersViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var userData = DataProvider.mockUserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Browse Users"
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        userData = DataProvider.userData
        tableView.reloadData()
        
    }
    
    func completionHandler(user: User) {
        // TODO: update your cell later on
    }
}

extension BrowseUsersViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FriendCell
        
        let userCell = tableView.dequeueReusableCell(withIdentifier: "imageCell", for: indexPath) as! UserImageCell
        
        let userData = userData[indexPath.section].1
        userCell.updateView(user: userData[indexPath.row])
        
        return userCell
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return userData[section].0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let userData = userData[indexPath.section].1[indexPath.row]
        
        let vc = UserDetailViewController()
        vc.user = userData
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let userData = userData[indexPath.section].1[indexPath.row]
        
        let action = UIContextualAction(style: .normal, title: "Favourite") { [weak self] (action, view, completionHandler) in
            self?.completionHandler(user: userData)
            completionHandler(true)
        }
        
        action.backgroundColor = .red
        return UISwipeActionsConfiguration(actions: [action])
        
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            userData.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}

extension BrowseUsersViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return userData.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userData[section].1.count
    }
}

