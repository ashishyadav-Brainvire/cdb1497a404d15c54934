//
//  UserListVC.swift
//  cdb1497a404d15c54934
//
//  Created by Ashish Yadav on 12/10/23.
//

import UIKit

class UserListVC: UIViewController {
    
    // MARK: IBOutlets functions
    @IBOutlet weak var colViewUserList: UICollectionView!
    
    // MARK: Internal Properties
    let spaceBetweenCell: CGFloat = 10
    let spaceBetweenLine: CGFloat = 10
    let spaceAroundCell: CGFloat = 10
    
    // MARK: LifeCycle function
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
        setupColView()
    }
    func initialSetup() {
    }
    func setupColView() {
        colViewUserList.delegate = self
        colViewUserList.dataSource = self
        
        let headerNib = UINib(nibName: "UserHeaderView", bundle: nil)
        colViewUserList.register(headerNib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "UserHeaderView")
        
        let nib = UINib(nibName: "UserImageCVCell", bundle: nil)
        colViewUserList.register(nib, forCellWithReuseIdentifier: "UserImageCVCell")
    }
    // MARK: IBAction
    // MARK: Actions
    // MARK: Custome functions
}
