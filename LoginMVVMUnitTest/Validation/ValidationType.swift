//
//  ValidationType.swift
//  LoginMVVMUnitTest
//
//  Created by Nitesh Sharma on 13/07/24.
//

import Foundation

enum ValidationType: String {
    case emptyEmail = "Email cannot be Empty"
    case emptyPassword = "Password cannot be Empty"
    case lengthPassword = "Password length must be more than 8 characters"
    case success = "Success"
}
