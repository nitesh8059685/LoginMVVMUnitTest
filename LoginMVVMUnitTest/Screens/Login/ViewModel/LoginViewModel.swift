//
//  LoginViewModel.swift
//  LoginMVVMUnitTest
//
//  Created by Nitesh Sharma on 13/07/24.
//

import Foundation

final class LoginViewModel {
    private var Helper = ValidationHelper()
    
    func ValidateLogin(_ email: String?, password: String?) -> ValidationType {
        Helper.ValidateLogin(email, password: password)
    }
}
