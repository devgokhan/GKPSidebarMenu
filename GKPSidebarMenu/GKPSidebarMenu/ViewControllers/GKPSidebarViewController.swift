//
//  GKPSidebarViewController.swift
//  GKPSidebarMenu
//
//  Created by Gokhan on 1.04.2018.
//  Copyright © 2018 Gokhan Alp. All rights reserved.
//

import UIKit

class GKPSidebarViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let nib = UINib(nibName: "GKPSidebarMenuListTableViewCell", bundle: Bundle(for: GKPSidebarMenuListTableViewCell.self))
        self.tableView.register(nib, forCellReuseIdentifier: "GKPSidebarMenuListTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return GKPSidebarMenu.leftMenuList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /* let cell =  UITableViewCell(style: .default, reuseIdentifier: nil)
         cell.textLabel?.text = GKPSidebarMenu.leftMenuList[indexPath.row].title*/
        
        
        //GKPSidebarViewController(nibName: "GKPSidebarViewController", bundle: Bundle(for: GKPSidebarViewController.self))
        
        let cell = tableView.dequeueReusableCell(withIdentifier:"GKPSidebarMenuListTableViewCell", for: indexPath) as! GKPSidebarMenuListTableViewCell
        cell.titleLabel.text = GKPSidebarMenu.leftMenuList[indexPath.row].title.string
        
        cell.contentImage.backgroundColor = UIColor.blue
        cell.secondImage.backgroundColor = UIColor.red
        cell.secondImageTrailingConstraint.constant = cell.secondImageTrailingConstraint.constant + (GKPSidebarMenu.configuration?.leftSideBarMargin)!
        
        return cell
    }
    

}
