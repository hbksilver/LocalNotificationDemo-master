//
//  UIViewController+Extension.swift
//  LocalNotification
//
//  Created by hassan Baraka on 05/21/2021.
//  Copyright © 2021 hassan Baraka. All rights reserved.
//

import UIKit

extension UIViewController {
    
    //Alert with Single button
    final func showAlert(title: String?, message: String?, okTitle: String,
                         completion: (() -> Void)? = nil) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: okTitle, style: .default, handler: nil)
        alertController.addAction(okAction)
        
        DispatchQueue.main.async {
            self.present(alertController, animated: true, completion: completion)
        }
    }
    
    final func showAlert(title: String?, message: String?, actions: [UIAlertAction],
                         completion: (() -> Void)? = nil) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        actions.forEach { alertController.addAction($0) }
        
        DispatchQueue.main.async {
            self.present(alertController, animated: true, completion: completion)
        }
    }
    
    final func showToast(message msg:String) {
        let alertController = UIAlertController(title: msg, message: "", preferredStyle: .actionSheet)
        DispatchQueue.main.async {
            self.present(alertController, animated: true, completion: nil)
            
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3){
              alertController.dismiss(animated: true, completion: nil)
            }
        }
    }
}
