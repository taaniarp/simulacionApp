//
//  Usuarios+CoreDataProperties.swift
//  simulacionApp
//
//  Created by Tania Ramon on 2/3/18.
//  Copyright © 2018 Tania Ramon. All rights reserved.
//
//

import Foundation
import CoreData


extension Usuarios {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Usuarios> {
        return NSFetchRequest<Usuarios>(entityName: "Usuarios")
    }

    @NSManaged public var nombre: String?
    @NSManaged public var password: String?

}
