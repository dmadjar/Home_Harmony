//
//  MainViewModel.swift
//  Home_Harmony
//
//  Created by Daniel Madjar on 3/18/24.
//

import Foundation
import CoreData

class MainViewModel: ObservableObject {
    let manager = CoreDataManager.instance
    
    @Published var appStateSelection: Int = 0

    @Published var user: User? = nil
    
    @Published var friends: [User] = []
    @Published var families: [Family] = []
    
    func findUser(email: String, password: String) {
        let request = NSFetchRequest<User>(entityName: "User")
        do {
            let users: [User] = try manager.context.fetch(request)
            
            for u in users {
                if u.email == email && u.password == password {
                    self.user = u
                    break
                }
            }
        } catch {
            print("Could not find user.")
        }
        
        save()
    }
    
    func getUsers() -> [User]{
        let request = NSFetchRequest<User>(entityName: "User")
        
        do {
            let users: [User] = try manager.context.fetch(request)
            return users
        } catch {
            print("Could not find users.")
            return []
        }
    }
    
    func addFriend(friend: User) {
        user?.addToFriends(friend)
        save()
    }
    
    func addFamily(name: String, members: Set<User>) {
        let fam = Family(context: manager.context)
        fam.id = UUID()
        fam.name = name
        
        for member in members {
            fam.addToUsers(member)
        }
        
        user?.addToFamilies(fam)
        
        save()
    }
    
    func addTask(name: String, description: String, memberAssigned: User, finishBy: Date, family: Family) {
        let task = Tasks(context: manager.context)
        task.id = UUID()
        task.name = name
        task.date = finishBy
        task.creator = user
        task.memberAssigned = memberAssigned
        task.progress = 0
        task.taskInfo = description
        
        family.addToTasks(task)
        
        save()
    }
    
    func addUser(name: String, lastName: String, email: String, password: String) {
        let u = User(context: manager.context)
        u.id = UUID()
        u.name = name
        u.lastName = lastName
        u.email = email
        u.password = password
        
        save()
    }
    
    func findFamilies() -> [Family] {
        if let families = user?.families?.allObjects as? [Family] {
            return families
        } else {
            return []
        }
    }
    
    func findFriends() -> [User] {
        if let friends = user?.friends?.allObjects as? [User] {
            return friends
        } else {
            return []
        }
    }
    
    func getMembers(family: Family) -> [User] {
        let members = family.users?.allObjects as! [User]
        return members
    }
    
    func getTasks(family: Family) -> [Tasks] {
        let tasksInFamily = family.tasks?.allObjects as! [Tasks]
        return tasksInFamily
    }
    
    func save() {
        self.friends = findFriends()
        self.families = findFamilies()
        self.manager.save()
    }
}
