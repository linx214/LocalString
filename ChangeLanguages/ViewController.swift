//
//  ViewController.swift
//  ChangeLanguages
//
//  Created by linx on 2017/11/7.
//  Copyright © 2017年 haoyicn. All rights reserved.
//

import UIKit

class ViewController: TransferBaseVC {
    var varible = false
    lazy var changeButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(.red, for: .normal)
        button.addTarget(self, action: #selector(changeButtonClick), for: .touchUpInside)
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupUI()
        configUI()
    }
    
    override func updateLocalStrings() {
        changeButton.setTitle(LocalString.stringFor(key: "buttonTitle"), for: .normal)
    }
    
    func setupUI() {
        self.view.addSubview(changeButton)
        changeButton.frame = CGRect(x: 0, y: 100, width: 100, height: 44)
    }
    
    func configUI() {
        self.view.backgroundColor = .white
    }
    
    @objc func changeButtonClick() {
        if varible {
            LocalString.changeLanguage(lang: "en")
        } else {
            LocalString.changeLanguage(lang: "zh-Hans")
        }
        varible = !varible
        
        NotificationCenter.default.post(name: TransferNotification, object: nil)
    }
}

