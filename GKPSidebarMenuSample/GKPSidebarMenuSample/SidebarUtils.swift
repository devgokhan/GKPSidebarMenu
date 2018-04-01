//
//  SidebarUtils.swift
//  GKPSidebarMenuSample
//
//  Created by Gokhan on 1.04.2018.
//  Copyright © 2018 Gokhan Alp. All rights reserved.
//

import UIKit
import GKPSidebarMenu

class SidebarUtils: NSObject {
    static func CreateMenuList() -> [GKPSidebarMenuContentListModel]
    {
        var list = [GKPSidebarMenuContentListModel]()
        list.append(GKPSidebarMenuContentListModel(title: "First Title", contentImage: nil, secondaryImage: nil, subMenuList: nil))
        list.append(GKPSidebarMenuContentListModel(title: "Second Title", contentImage: nil, secondaryImage: nil, subMenuList: nil))
        list.append(GKPSidebarMenuContentListModel(title: "Third Title",  contentImage: nil, secondaryImage: nil, subMenuList: nil))
        list.append(GKPSidebarMenuContentListModel(title: "Fourth Title", contentImage: nil, secondaryImage: nil, subMenuList: nil))
        list.append(GKPSidebarMenuContentListModel(title: "Fifth Title",  contentImage: nil, secondaryImage: nil, subMenuList: nil))
        list.append(GKPSidebarMenuContentListModel(title: "Sixth Title",  contentImage: nil, secondaryImage: nil, subMenuList: nil))
        return list
    }
}

