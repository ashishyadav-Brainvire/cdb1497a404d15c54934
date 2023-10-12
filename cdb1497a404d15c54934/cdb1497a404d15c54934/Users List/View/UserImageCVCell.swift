//
//  UserImageCVCell.swift
//  cdb1497a404d15c54934
//
//  Created by Ashish Yadav on 12/10/23.
//

import UIKit

class UserImageCVCell: UICollectionViewCell {
    // MARK: IBOutlet Functions
    @IBOutlet weak var imgName: UILabel!
    
    // MARK: Internal Properties
    // MARK: TableView Functions
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: Custom function
    func setupView() {
    }
    func setupCell(name: String) {
        imgName.text = name
    }
}

