//
//  GKPSidebarMenuContentListModel.swift
//  GKPSidebarMenu
//
//  Created by Gokhan on 1.04.2018.
//  Copyright © 2018 Gokhan Alp. All rights reserved.
//

import UIKit

public class GKPSidebarMenuContentListModel: NSObject {
    public var title: NSAttributedString = NSAttributedString.init(string: "")
    public var contentImage : UIImage?
    public var secondaryImage : UIImage?
    public var subMenuList = [GKPSidebarMenuContentListModel]()
    
    public init(title: NSAttributedString, contentImage: UIImage?, secondaryImage : UIImage?, subMenuList: [GKPSidebarMenuContentListModel]? ) {
        super.init()
        self.title = title
        self.contentImage = contentImage
        self.secondaryImage = secondaryImage
        if(subMenuList != nil)
        {
            self.subMenuList = subMenuList!
        }
    }
    
    public convenience init(title: String, contentImage: UIImage?, secondaryImage : UIImage?, subMenuList: [GKPSidebarMenuContentListModel]? ) {
        self.init(title: NSAttributedString.init(string: title), contentImage: contentImage, secondaryImage: secondaryImage, subMenuList: subMenuList)
    }
    
    
}

