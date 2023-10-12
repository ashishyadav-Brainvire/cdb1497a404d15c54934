//
//  UserListModel.swift
//  cdb1497a404d15c54934
//
//  Created by Ashish Yadav on 12/10/23.
//

import Foundation

struct UserList {
    let userId: Int
    let userName: String
    let userImage: String
    let imageList: [String]
    
    static func getUserList() -> [UserList] {
        var userList: [UserList] = []
        userList.append(UserList(userId: 1, userName: "User 1", userImage: "User",
                                 imageList: ["Image 1", "Image 2", "Image 3", "Image 4",
                                             "Image 5", "Image 6", "Image 7"]))
        userList.append(UserList(userId: 2, userName: "User 2", userImage: "User",
                                 imageList: ["Image 1", "Image 2", "Image 3", "Image 4",
                                             "Image 5", "Image 6"]))
        userList.append(UserList(userId: 1, userName: "User 3", userImage: "User",
                                 imageList: ["Image 1", "Image 2", "Image 3", "Image 4",
                                             "Image 5", "Image 6", "Image 7"]))
        userList.append(UserList(userId: 2, userName: "User 4", userImage: "User",
                                 imageList: ["Image 1", "Image 2", "Image 3", "Image 4",
                                             "Image 5", "Image 6"]))
        return userList
    }
}
