//
//  GKPSidearMenu.swift
//  GKPSidebarMenu
//
//  Created by Gokhan on 1.04.2018.
//  Copyright © 2018 Gokhan Alp. All rights reserved.
//


import UIKit

public class GKPSidebarMenu: NSObject {
    
    public static var configuration: GKPSidebarConfiguration?
    public static var delegate: GKPSidebarMenuDelegate!
    
    internal static var leftMenuList = [GKPSidebarMenuContentListModel]()
    
    private static var expandStateOfLeftMenu : Bool = false
    private static var expandStateOfRightMenu : Bool = false
    private static var containerViewController: GKPContainerViewController!
    
    //MARK: - Public Funcs
    public static func setupSidebarMenu(window: UIWindow, configuration: GKPSidebarConfiguration?)
    {
        self.configuration = configuration
        self.setSidebarContainerAsRootViewController(window: window)
    }
    
    public static func initializeContentViewController(contentViewController : UIViewController, addNewCenterNavigationController: Bool)
    {
        self.containerViewController.initializeSidebar(centerViewController: contentViewController, addNewCenterNavigationController: addNewCenterNavigationController)
    }
    
    public static func setMenulist(_ menulist: [GKPSidebarMenuContentListModel], menuType: GKPEnumModel.SidebarMenuType)
    {
        switch menuType {
        case .left:
            self.leftMenuList = menulist
            self.containerViewController.sidebarLeftMenuViewController.tableView.reloadData()
            break
        case .right:
            
            break
        }
    }
    
    public static func updateExpandStateOfMenu(isExpanded: Bool, menuType: GKPEnumModel.SidebarMenuType)
    {
        switch menuType {
        case .left:
            self.expandStateOfLeftMenu = isExpanded
            break
        case .right:
            self.expandStateOfRightMenu = isExpanded
            break
        }
        self.containerViewController.animateExpandCollapseMenu(expandMenu: isExpanded, menuType: menuType)
    }
    
    public static func expandOrCollapseMenu(menuType: GKPEnumModel.SidebarMenuType)
    {
        self.updateExpandStateOfMenu(isExpanded: !expandStateOfMenu(menuType: menuType), menuType: menuType)
    }
    
    public static func expandStateOfMenu(menuType: GKPEnumModel.SidebarMenuType) -> Bool
    {
        switch menuType {
        case .left:
            return self.expandStateOfLeftMenu
        case .right:
            return self.expandStateOfRightMenu
        }
    }
    
    //MARK: - Private Funcs
    private static func setSidebarContainerAsRootViewController(window: UIWindow)
    {
        if(self.containerViewController == nil)
        {
            self.containerViewController = GKPContainerViewController()
            self.containerViewController.configuration = self.configuration
            window.rootViewController = self.containerViewController
            window.makeKeyAndVisible()
        }
    }
    
    
    
}

