////
//Alert.swift
//AlertExample
//
//Created by Basel Baragabah on 20/10/2019.
//Copyright © 2019 Basel Baragabah. All rights reserved.
//

import Foundation
import UIKit

struct Alert {
    
    static func showAlertWithButtons(on vc: UIViewController,title: String, message: String, options: String..., completion: @escaping (Int) -> Void) {
         
         let alertController = UIAlertController(title: "", message: "", preferredStyle: .alert)
         
        let titFont = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16.0)]
         let msgFont = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16.0)]
         
         let titAttrString = NSMutableAttributedString(string: title, attributes: titFont)
         let msgAttrString = NSMutableAttributedString(string: message, attributes: msgFont)
         
         alertController.setValue(titAttrString, forKey: "attributedTitle")
         alertController.setValue(msgAttrString, forKey: "attributedMessage")
    
         for (index, option) in options.enumerated() {
             alertController.addAction(UIAlertAction.init(title: option, style: .default, handler: { (action) in
                 completion(index)
             }))
         }
         
         DispatchQueue.main.async {vc.present(alertController, animated: true,completion: nil) }

     }
}
