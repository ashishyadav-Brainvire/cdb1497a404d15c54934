//
//  UserHeaderView.swift
//  cdb1497a404d15c54934
//
//  Created by Ashish Yadav on 12/10/23.
//

import UIKit

class UserHeaderView: UICollectionReusableView {
    
    @IBOutlet weak var viewImageBase: UIView!
    @IBOutlet weak var imgUser: UIImageView!
    @IBOutlet weak var imgName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewImageBase.layer.cornerRadius = viewImageBase.frame.height/2
        viewImageBase.clipsToBounds = true
    }
    
}
