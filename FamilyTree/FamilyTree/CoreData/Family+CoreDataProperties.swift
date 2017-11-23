//
//  Family+CoreDataProperties.swift
//  FamilyTree
//
//  Created by Philips on 21/09/17.
//  Copyright © 2017 mushtaque87. All rights reserved.
//

import Foundation
import CoreData


extension Family {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Family> {
        return NSFetchRequest<Family>(entityName: "Family")
    }

    @NSManaged public var famillyType: String?
    @NSManaged public var relation: String?
    @NSManaged public var relationship: NSSet?

}

// MARK: Generated accessors for relationship
extension Family {

    @objc(addRelationshipObject:)
    @NSManaged public func addToRelationship(_ value: Person)

    @objc(removeRelationshipObject:)
    @NSManaged public func removeFromRelationship(_ value: Person)

    @objc(addRelationship:)
    @NSManaged public func addToRelationship(_ values: NSSet)

    @objc(removeRelationship:)
    @NSManaged public func removeFromRelationship(_ values: NSSet)

}
