//
//  User+CoreDataProperties.swift
//  Home_Harmony
//
//  Created by Daniel Madjar on 3/18/24.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var lastName: String?
    @NSManaged public var password: String?
    @NSManaged public var email: String?
    @NSManaged public var friends: NSSet?
    @NSManaged public var families: NSSet?

}

// MARK: Generated accessors for friends
extension User {

    @objc(addFriendsObject:)
    @NSManaged public func addToFriends(_ value: User)

    @objc(removeFriendsObject:)
    @NSManaged public func removeFromFriends(_ value: User)

    @objc(addFriends:)
    @NSManaged public func addToFriends(_ values: NSSet)

    @objc(removeFriends:)
    @NSManaged public func removeFromFriends(_ values: NSSet)

}

// MARK: Generated accessors for families
extension User {

    @objc(addFamiliesObject:)
    @NSManaged public func addToFamilies(_ value: Family)

    @objc(removeFamiliesObject:)
    @NSManaged public func removeFromFamilies(_ value: Family)

    @objc(addFamilies:)
    @NSManaged public func addToFamilies(_ values: NSSet)

    @objc(removeFamilies:)
    @NSManaged public func removeFromFamilies(_ values: NSSet)

}

extension User : Identifiable {

}
