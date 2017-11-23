//
//  Family+CoreDataClass.swift
//  FamilyTree
//
//  Created by Philips on 21/09/17.
//  Copyright © 2017 mushtaque87. All rights reserved.
//

import Foundation
import CoreData

@objc(Family)
public class Family: NSManagedObject {
   
    convenience public override init(entity: NSEntityDescription, insertInto context: NSManagedObjectContext?) {
        if let entity = NSEntityDescription.entity(forEntityName: "Family", in: context!) {
           self.init(entity: entity, insertInto: context)
        }
        else {
            fatalError("No entity : \(String(describing: entity.name))" )
        }
     
    }
    
}
