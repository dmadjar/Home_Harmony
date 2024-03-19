//
//  Tasks+CoreDataProperties.swift
//  
//
//  Created by Daniel Madjar on 3/18/24.
//
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Tasks {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Tasks> {
        return NSFetchRequest<Tasks>(entityName: "Tasks")
    }


}

extension Tasks : Identifiable {

}
