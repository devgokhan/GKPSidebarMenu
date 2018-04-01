//
//  GKPSidebarMenuDelegate.swift
//  GKPSidebarMenu
//
//  Created by Gokhan on 1.04.2018.
//  Copyright © 2018 Gokhan Alp. All rights reserved.
//

public protocol GKPSidebarMenuDelegate {
    func sidebarMenuExpandStateUpdated(isExpanded: Bool, menuType: GKPEnumModel.SidebarMenuType)
}

