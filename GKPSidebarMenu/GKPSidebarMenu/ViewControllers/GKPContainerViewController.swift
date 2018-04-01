//
//  GKPContainerViewController.swift
//  GKPSidebarMenu
//
//  Created by Gokhan on 1.04.2018.
//  Copyright © 2018 Gokhan Alp. All rights reserved.
//

import UIKit

class GKPContainerViewController: UIViewController {

    // MARK: - Variables
    var centerNavigationController: UINavigationController?
    var contentViewController : UIViewController!
    var sidebarLeftMenuViewController : GKPSidebarViewController!
    
    var configuration : GKPSidebarConfiguration?
    
    
    // MARK: - View Controller
    override func viewDidLoad() {
        if(self.configuration == nil)
        {
            self.configuration = GKPSidebarConfiguration()
        }
        
        super.viewDidLoad()
    }
    
    // MARK: - Core
    // MARK: Public Methods
    func initializeSidebar(centerViewController : UIViewController, addNewCenterNavigationController : Bool)
    {
        self.contentViewController = centerViewController
        
        if(addNewCenterNavigationController == true)
        {
            self.addNavigationController(centerViewController: self.contentViewController)
        }
        
        if(self.centerNavigationController != nil)
        {
            self.view.addSubview(centerNavigationController!.view)
            self.addChildViewController(centerNavigationController!)
            centerNavigationController!.didMove(toParentViewController: self)
        }
        else
        {
            self.view.addSubview(self.contentViewController.view)
            self.addChildViewController(self.contentViewController)
            self.contentViewController.didMove(toParentViewController: self)
        }
        
        self.sidebarLeftMenuViewController = GKPSidebarViewController(nibName: "GKPSidebarViewController", bundle: Bundle(for: GKPSidebarViewController.self))
        
        self.sidebarLeftMenuViewController.view.frame = self.contentViewController.view.frame
        if(self.configuration!.freeSideMenuWidth == false)
        {
            self.sidebarLeftMenuViewController.view.frame.size.width = self.sidebarLeftMenuViewController.view.frame.size.width - self.sideBarMargin(menuType: .left)
        }
        
        self.view.insertSubview(self.sidebarLeftMenuViewController.view, at: 0)
        
        self.addChildViewController(self.sidebarLeftMenuViewController)
        self.sidebarLeftMenuViewController.didMove(toParentViewController: self)
        
    }
    
    //MARK: Private Methods
    private func addNavigationController(centerViewController : UIViewController)
    {
        centerNavigationController = UINavigationController(rootViewController: centerViewController)
    }
    
    func animateExpandCollapseMenu(expandMenu : Bool, menuType: GKPEnumModel.SidebarMenuType)
    {
        var openColseFactor : CGFloat = self.view.frame.width
        let animationConfiguration = self.configuration!.sidebarMenuOpenCloseAnimationConfiguration
        
        var duration = animationConfiguration.duration
        duration = expandMenu ? duration : TimeInterval(CGFloat(animationConfiguration.duration) * (1.0 - animationConfiguration.usingSpringWithDamping))
        
        UIView.animate(withDuration: duration, delay:animationConfiguration.delay, usingSpringWithDamping: expandMenu ? animationConfiguration.usingSpringWithDamping : 1.0, initialSpringVelocity: expandMenu ? animationConfiguration.initialSpringVelocity : 1.0, options: animationConfiguration.options, animations: {
            if(expandMenu)
            {
                openColseFactor = self.sideBarMargin(menuType: menuType)
            }
            
            if(self.centerNavigationController != nil)
            {
                self.centerNavigationController!.view.frame.origin.x = self.view.frame.width - openColseFactor
            }
            else
            {
                self.contentViewController.view.frame.origin.x = self.view.frame.width - openColseFactor
            }
            
        }, completion: { (finished: Bool) in
            if(finished)
            {
                if let contentProtocol = self.contentViewController as? GKPSidebarMenuDelegate
                {
                    contentProtocol.sidebarMenuExpandStateUpdated(isExpanded: expandMenu, menuType: .left)
                }
                
            }
        })
        
        UIView.commitAnimations()
    }
    
    // MARK: - Utils
    private func sideBarMargin(menuType: GKPEnumModel.SidebarMenuType) -> CGFloat
    {
        if(menuType == .right)
        {
            return self.configuration!.rightSideBarMargin
        }
        else
        {
            return self.configuration!.leftSideBarMargin
        }
    }

}
