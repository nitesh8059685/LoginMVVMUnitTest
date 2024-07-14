//
//  LoginViewModelTestCases.swift
//  LoginMVVMUnitTestTests
//
//  Created by Nitesh Sharma on 13/07/24.
//

import XCTest
@testable import LoginMVVMUnitTest

final class LoginViewModelTestCases: XCTestCase {

    var viewModel: LoginViewModel?
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        viewModel = LoginViewModel()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        viewModel = nil
    }
    
    func testInvalidEmail() {
        guard let viewModel else {
            XCTFail("View Model cannot be nil")
            return
        }
        let type = viewModel.ValidateLogin("", password: "")
        XCTAssertEqual(type, .emptyEmail, "Email should be empty")
        XCTAssertEqual(type.rawValue, "Email cannot be Empty")
    }
    
    func testInvalidPassword() {
        guard let viewModel else {
            XCTFail("View Model cannot be nil")
            return
        }
        let type = viewModel.ValidateLogin("nitesh8059685@gmail.com", password: "")
        XCTAssertEqual(type, .emptyPassword, "Password should be empty")
        XCTAssertTrue(type == .emptyPassword, "Password should be empty")
        XCTAssertEqual(type.rawValue, "Password cannot be Empty")
        
//        XCTAssertTrue(<#T##expression: Bool##Bool#>, <#T##message: String##String#>)
//        XCTAssertNil(<#T##expression: Any?##Any?#>, <#T##message: String##String#>)
//        XCTAssertFalse(<#T##expression: Bool##Bool#>, <#T##message: String##String#>)
        
//        Length of Password
        let type1 = viewModel.ValidateLogin("nitesh8059685@gmail.com", password: "1234")
        XCTAssertEqual(type1, .lengthPassword, "Password should be more than 8 characters")
        XCTAssert(type1 == .lengthPassword)
        
    }
    
    func testLoginSuccess() {
        guard let viewModel else {
            XCTFail("View Model cannot be nil")
            return
        }
        
        let type = viewModel.ValidateLogin("nitesh8059685@gmail.com", password: "123456789")
        XCTAssertEqual(type, .success, "Login Successful")
    }
    
  
}
