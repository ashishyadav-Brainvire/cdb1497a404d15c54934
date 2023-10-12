//
//  UserListVC+CV.swift
//  cdb1497a404d15c54934
//
//  Created by Ashish Yadav on 12/10/23.
//

import UIKit

// MARK: - UICollectionViewDelegateFlowLayout
extension UserListVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let imageList = UserList.getUserList()[indexPath.section].imageList
        let evenImages = imageList.count % 2 == 0 ? true : false
        if imageList.count >= 1 && evenImages == false {
            if indexPath.row == 0 {
                let width = collectionView.frame.size.width - (spaceAroundCell+spaceAroundCell)
                return CGSize(width: width, height: width)
            }
        }
        let width = (collectionView.frame.size.width/2) - (spaceAroundCell+spaceBetweenCell/2)
        return CGSize(width: width, height: width)
    }
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return spaceBetweenCell
    }
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return spaceBetweenCell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: spaceAroundCell, left: spaceAroundCell, bottom: spaceAroundCell, right: spaceAroundCell)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
            return CGSize(width: collectionView.frame.width, height: 60)
    }
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
            return CGSize(width: 0, height: 0)
    }
}
// MARK: - UICollectionViewDelegate
extension UserListVC: UICollectionViewDelegate {
    
}
// MARK: - UICollectionViewDataSource
extension UserListVC: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return UserList.getUserList().count
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return UserList.getUserList()[section].imageList.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cvCell = collectionView.dequeueReusableCell(withReuseIdentifier: "UserImageCVCell", for: indexPath) as? UserImageCVCell else {
            return UICollectionViewCell()
        }
        cvCell.imgName.text = UserList.getUserList()[indexPath.section].imageList[indexPath.row]
        return cvCell
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
       switch kind {
       case UICollectionView.elementKindSectionHeader:
           guard let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind,
                                                                            withReuseIdentifier: "UserHeaderView",
                                                                                  for: indexPath) as? UserHeaderView else {
               return UICollectionReusableView()
           }
           let user = UserList.getUserList()[indexPath.section]
           headerView.imgUser.image = UIImage(named: user.userImage)
           headerView.imgName.text = user.userName
           return headerView
       case UICollectionView.elementKindSectionFooter:
           return UICollectionReusableView()
           
       default:
           assert(false, "Unexpected element kind")
       }
    }

}
// MARK: - UICollectionView + Action
extension UserListVC {
    
}
