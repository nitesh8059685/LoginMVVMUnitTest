//
//  AlertController + UIViewController.swift
//  LoginMVVMUnitTest
//
//  Created by Nitesh Sharma on 13/07/24.
//

import UIKit

extension UIViewController {
    
    func ShowAlert(_ message: String) {
        let alertController = UIAlertController(
            title: "Alert",
            message: message,
            preferredStyle: .alert
            )
        let ok = UIAlertAction(title: "Okay", style: .default)
        alertController.addAction(ok)
        present(alertController, animated: true)
    }
}
