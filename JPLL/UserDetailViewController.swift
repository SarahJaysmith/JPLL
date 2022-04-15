//
//  UsersDetailViewController.swift
//  JPLL
//
//  Created by Sarah Jaysmith on 2022-03-25.
//

import UIKit

class UserDetailViewController: UIViewController {
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        title = "Detail view"
        
        user?.nickname = "Updated nick name"
        
        var mockData = DataProvider.mockUserData()
        
        mockData.append(("Updated", [user!]))
        
        DataProvider.userData = mockData
    }
}
