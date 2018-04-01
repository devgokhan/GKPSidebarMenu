//
//  GKPSidebarConfiguration.swift
//  GKPSidebarMenu
//
//  Created by Gokhan on 1.04.2018.
//  Copyright © 2018 Gokhan Alp. All rights reserved.
//

import UIKit

public class GKPSidebarConfiguration: NSObject {
    
    public var leftSideBarMargin : CGFloat = 200.0
    public var rightSideBarMargin : CGFloat = 200.0
    
    public var sidebarMenuOpenCloseAnimationConfiguration = GKPSidebarOpenCloseAnimationConfiguration()
    
    private var freeWidth : Bool = true
    public var freeSideMenuWidth: Bool
    {
        get {return self.freeWidth}
        set (newValue) {
            self.freeWidth = newValue
            if(self.freeWidth == false)
            {
                self.sidebarMenuOpenCloseAnimationConfiguration.usingSpringWithDamping = 1.0
                self.sidebarMenuOpenCloseAnimationConfiguration.initialSpringVelocity = 1.0
                
            }
        }
    }
    
    
}

