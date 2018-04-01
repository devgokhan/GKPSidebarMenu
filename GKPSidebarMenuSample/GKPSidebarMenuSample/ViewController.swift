//
//  ViewController.swift
//  GKPSidebarMenuSample
//
//  Created by Gokhan on 1.04.2018.
//  Copyright © 2018 Gokhan Alp. All rights reserved.
//

import UIKit
import GKPSidebarMenu

class ViewController: UIViewController {
    
    @IBOutlet weak var leftMenuButton: UIButton!
    let app = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func leftSideMenuButtonClicked(_ sender: Any) {
        GKPSidebarMenu.expandOrCollapseMenu(menuType: .left)
        
        //et isExpanded = self.app.GKPSlidebarMenu.expandStateOfMenu(menuType: .left)
        //self.leftMenuButton.titleLabel?.text = isExpanded ? ">" : "<"
        
    }
    
    //MARK: Delegations
    func sidebarMenuExpandStateUpdated(isExpanded: Bool, menuType: GKPEnumModel.SidebarMenuType)
    {
        self.leftMenuButton.titleLabel?.text = isExpanded ? "<" : ">"
    }


}

