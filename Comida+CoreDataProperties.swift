//
//  Comida+CoreDataProperties.swift
//  simulacionApp
//
//  Created by Tania Ramon on 7/3/18.
//  Copyright © 2018 Tania Ramon. All rights reserved.
//
//

import Foundation
import CoreData


extension Comida {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Comida> {
        return NSFetchRequest<Comida>(entityName: "Comida")
    }

    @NSManaged public var nombre: String?
    @NSManaged public var descripcion: String?
    @NSManaged public var imgComida: NSData?
    @NSManaged public var tipo: TipoComida?

}
