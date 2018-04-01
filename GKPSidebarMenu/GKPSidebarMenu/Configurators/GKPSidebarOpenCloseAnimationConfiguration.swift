//
//  GKPSidebarOpenCloseAnimationConfiguration.swift
//  GKPSidebarMenu
//
//  Created by Gokhan on 1.04.2018.
//  Copyright © 2018 Gokhan Alp. All rights reserved.
//

import UIKit

public class GKPSidebarOpenCloseAnimationConfiguration: NSObject {
    
    public var duration : TimeInterval = 2.7
    public var delay : TimeInterval = 0.0
    public var usingSpringWithDamping : CGFloat = 0.5
    public var initialSpringVelocity : CGFloat = 0.1
    public var options : UIViewAnimationOptions = .curveEaseInOut
    
}
