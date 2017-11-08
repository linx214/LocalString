//
//  TransferBaseVC.swift
//  ChangeLanguages
//
//  Created by linx on 2017/11/8.
//  Copyright © 2017年 haoyicn. All rights reserved.
//

import Foundation
import UIKit

let TransferNotification = NSNotification.Name(rawValue: "TransferNotification")

class TransferBaseVC: UIViewController, Transferable {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateLocalStrings()
        
        NotificationCenter.default.addObserver(self, selector: #selector(handleNotification), name: TransferNotification, object: nil)
    }

    deinit {
        NotificationCenter.default.removeObserver(self, name: TransferNotification, object: nil)
    }
    
    func updateLocalStrings() {
        
    }
    
    @objc func handleNotification() {
        updateLocalStrings()
    }
}
