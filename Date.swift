//
//  Date.swift
//  TaskIt
//
//  Created by Vincent on 27/10/2014.
//  Copyright (c) 2014 VD. All rights reserved.
//

import Foundation

class Date {
    class func from (#year: Int, month: Int, day: Int) -> NSDate {
        var components = NSDateComponents()
        components.year = year
        components.month = month
        components.day = day
        
        var gregorianCalendar = NSCalendar(identifier: NSGregorianCalendar)
        var date = gregorianCalendar?.dateFromComponents(components)
        
        return date!
    }
    
    class func toString (#date: NSDate) -> String {
        let dateStringFormat = NSDateFormatter()
        dateStringFormat.dateFormat = "dd MMM yy"
        let dateString = dateStringFormat.stringFromDate(date)
        
        return dateString
    }
}