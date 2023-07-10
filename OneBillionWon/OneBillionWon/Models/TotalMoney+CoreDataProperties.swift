//
//  TotalMoney+CoreDataProperties.swift
//  
//
//  Created by 이승재 on 2023/07/10.
//
//

import Foundation
import CoreData


extension TotalMoney {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TotalMoney> {
        return NSFetchRequest<TotalMoney>(entityName: "TotalMoney")
    }

    @NSManaged public var totalMoney: Int64

}
