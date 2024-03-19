//
//  Family+CoreDataProperties.swift
//  
//
//  Created by Daniel Madjar on 3/18/24.
//
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Family {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Family> {
        return NSFetchRequest<Family>(entityName: "Family")
    }

    @NSManaged public var name: String?
    @NSManaged public var relationship: NSSet?
    @NSManaged public var tasks: NSSet?

}

// MARK: Generated accessors for relationship
extension Family {

    @objc(addRelationshipObject:)
    @NSManaged public func addToRelationship(_ value: User)

    @objc(removeRelationshipObject:)
    @NSManaged public func removeFromRelationship(_ value: User)

    @objc(addRelationship:)
    @NSManaged public func addToRelationship(_ values: NSSet)

    @objc(removeRelationship:)
    @NSManaged public func removeFromRelationship(_ values: NSSet)

}

// MARK: Generated accessors for tasks
extension Family {

    @objc(addTasksObject:)
    @NSManaged public func addToTasks(_ value: NSManagedObject)

    @objc(removeTasksObject:)
    @NSManaged public func removeFromTasks(_ value: NSManagedObject)

    @objc(addTasks:)
    @NSManaged public func addToTasks(_ values: NSSet)

    @objc(removeTasks:)
    @NSManaged public func removeFromTasks(_ values: NSSet)

}

extension Family : Identifiable {

}
