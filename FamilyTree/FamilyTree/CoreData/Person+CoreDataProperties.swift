//
//  Person+CoreDataProperties.swift
//  FamilyTree
//
//  Created by Philips on 21/09/17.
//  Copyright © 2017 mushtaque87. All rights reserved.
//

import Foundation
import CoreData


extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var name: String?
    @NSManaged public var age: Int32
    @NSManaged public var images: NSData?
    @NSManaged public var relation: Family?

}
