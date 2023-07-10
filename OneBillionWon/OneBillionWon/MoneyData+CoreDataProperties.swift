//
//  MoneyData+CoreDataProperties.swift
//  
//
//  Created by 이승재 on 2023/07/10.
//
//

import Foundation
import CoreData


extension MoneyData {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MoneyData> {
        return NSFetchRequest<MoneyData>(entityName: "MoneyData")
    }

    @NSManaged public var date: Date?
    @NSManaged public var money: Int64
    @NSManaged public var contents: String?
    @NSManaged public var isGetMoney: Bool

    var dateString: String? {
        let myFormatter = DateFormatter()
        myFormatter.dateFormat = "yyyy-MM-dd"
        guard let date = self.date else { return "" }
        let savedDateString = myFormatter.string(from: date)
        return savedDateString
    }
}
