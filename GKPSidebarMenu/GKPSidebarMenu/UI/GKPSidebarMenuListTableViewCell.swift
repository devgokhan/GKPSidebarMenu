//
//  GKPSidebarMenuListTableViewCell.swift
//  GKPSidebarMenu
//
//  Created by Gokhan on 1.04.2018.
//  Copyright © 2018 Gokhan Alp. All rights reserved.
//

import UIKit

class GKPSidebarMenuListTableViewCell: UITableViewCell {

    @IBOutlet weak var contentImage: UIImageView!
    @IBOutlet weak var secondImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var viewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var viewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var viewLeftConstraint: NSLayoutConstraint!
    @IBOutlet weak var viewRightConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var contentImageWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var contentImageLedaingConstraint: NSLayoutConstraint!
    @IBOutlet weak var contentImageTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var contentImageBottomConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var secondImageWidthConstraint: NSLayoutConstraint!
    @IBOutlet weak var secondImageTrailingConstraint: NSLayoutConstraint!
    @IBOutlet weak var secondImageTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var secondImageBottomConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var titleLabelLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var titleLabelTrailingConstraint: NSLayoutConstraint!
    @IBOutlet weak var titleLabelTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var titleLabelBottomConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
