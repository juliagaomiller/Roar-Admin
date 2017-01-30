//
//  UserVC.swift
//  Roar-Admin
//
//  Created by Julia Miller on 1/29/17.
//  Copyright © 2017 Julia Miller. All rights reserved.
//

import UIKit

class UserInfoVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var signUpDateLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    //segment control
    //user information array
    //[UITableViewCell]
    
    override func viewDidLoad() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
        profileImageView.layer.cornerRadius = self.profileImageView.frame.size.width/2
        self.profileImageView.clipsToBounds = true
    }
    
    func loadUserInfoIntoCells(){//take in userInfo array.
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let i = indexPath.row
        print("indexPath.row: ", i)
        
        switch(i){
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "NumberCell") as! NumberCell
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "EmailCell") as! EmailCell
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "LastSessionCell") as! LastSessionCell
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "AthenaCell") as! AthenaCell
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell") as! ContactCell
            return cell
        default:
            fatalError()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row > 1 {
            return 70
        } else {
            return 44
        }
    }
    
    
}

