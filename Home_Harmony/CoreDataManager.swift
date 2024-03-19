//
//  CoreDataManager.swift
//  Home_Harmony
//
//  Created by Daniel Madjar on 3/18/24.
//

import Foundation
import CoreData

class CoreDataManager {
    static let instance = CoreDataManager()
    let container: NSPersistentContainer
    let context: NSManagedObjectContext
    
    init() {
        container = NSPersistentContainer(name: "DataModel")
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Error loading Core Data. \(error)")
            }
        }
        context = container.viewContext
    }
    
    func save() {
        do {
            try context.save()
           
            print("Successfully saved!")
        } catch {
            print("Error saving Core Data. \(error.localizedDescription)")
        }
    }
}
