//
//  ValidationHelper.swift
//  LoginMVVMUnitTest
//
//  Created by Nitesh Sharma on 13/07/24.
//

import Foundation

final class ValidationHelper {
    func ValidateEmail(_ email: String?) -> ValidationType {
        guard let email, !email.isEmpty else {
            return .emptyEmail
        }
        return .success
    }
    func ValidatePassword(_ password: String?) -> ValidationType {
        guard let password, !password.isEmpty else {
            return .emptyPassword
        }
        guard password.count > 8 else {
            return .lengthPassword
        }
        return .success
    }
    func ValidateLogin(_ email: String?, password: String?) -> ValidationType {
        let emailType = ValidateEmail(email)
        let passwordType = ValidatePassword(password)
        
        if emailType != .success {
            return emailType
        } else if passwordType != .success {
            return passwordType
        } else {
            return .success
        }
    }
}
