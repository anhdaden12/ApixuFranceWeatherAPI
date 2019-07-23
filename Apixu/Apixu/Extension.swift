//
//  Extension.swift
//  Apixu
//
//  Created by Ngoc on 7/23/19.
//  Copyright © 2019 Ngoc. All rights reserved.
//

import Foundation

extension TimeInterval {
    func changeDataetime() -> String {
        let fomatdate = DateFormatter()
        fomatdate.dateFormat = "zzzz"
        fomatdate.locale = Locale(identifier: "EN")
        
        let getdate = Date(timeIntervalSince1970: self)
        return fomatdate.string(from: getdate)
    }
}


extension Date {
    func toString(withFormat format: String = "zzzz") -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        let myString = formatter.string(from: self)
        let yourDate = formatter.date(from: myString)
        formatter.dateFormat = format
        return formatter.string(from: yourDate!)
    }
}


extension String {
    func convertstringtodate() -> String {
        let datefomater = DateFormatter()
        datefomater.dateFormat = "yyyy-MM-dd HH:mm"
        datefomater.locale = Locale(identifier: "EN")
        
        let convertdate = datefomater.date(from: self)
        
        datefomater.dateFormat = "EEEE"
        let getdate = datefomater.string(from: convertdate!)
        return getdate
    }
}
