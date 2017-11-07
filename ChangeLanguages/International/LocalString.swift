//
//  LocalString.swift
//  ChangeLanguages
//
//  Created by linx on 2017/11/7.
//  Copyright © 2017年 haoyicn. All rights reserved.
//

import Foundation

final class LocalString {
    static let key = "AppleLanguages"
    static let table = "Localizable"
    static let type = "lproj"
    
    public static func stringFor(key: String) -> String? {
        if let bundle = self.bundle {
            return bundle.localizedString(forKey: key, value: nil, table: table)
        }
        return nil
    }
    
    public static func changeLanguage(lang: String) {
        UserDefaults.standard.set(lang, forKey: key)
        UserDefaults.standard.synchronize()
    }
    
    public static func language() -> String? {
        return UserDefaults.standard.value(forKey: key) as? String
    }
    
    private static var bundle: Bundle? {
        get {
            if let lang = LocalString.language() {
                if let path = Bundle.main.path(forResource: lang, ofType: type) {
                    return Bundle(path: path)                
                }
            }
            
            return nil
        }
    }
    
}
