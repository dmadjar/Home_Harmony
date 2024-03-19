//
//  Tasks+CoreDataProperties.swift
//  Home_Harmony
//
//  Created by Daniel Madjar on 3/18/24.
//
//

import Foundation
import CoreData


extension Tasks {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Tasks> {
        return NSFetchRequest<Tasks>(entityName: "Tasks")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var taskInfo: String?
    @NSManaged public var date: Date?
    @NSManaged public var progress: Int64
    @NSManaged public var name: String?
    @NSManaged public var family: Family?
    @NSManaged public var creator: User?
    @NSManaged public var memberAssigned: User?

}

extension Tasks : Identifiable {

}
