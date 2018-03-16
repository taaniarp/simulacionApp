//
//  TipoComida+CoreDataProperties.swift
//  simulacionApp
//
//  Created by Tania Ramon on 7/3/18.
//  Copyright © 2018 Tania Ramon. All rights reserved.
//
//

import Foundation
import CoreData


extension TipoComida {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TipoComida> {
        return NSFetchRequest<TipoComida>(entityName: "TipoComida")
    }

    @NSManaged public var imgTipo: NSData?
    @NSManaged public var nombre: String?
    @NSManaged public var descripcion: String?
    @NSManaged public var comida: NSSet?

}

// MARK: Generated accessors for comida
extension TipoComida {

    @objc(addComidaObject:)
    @NSManaged public func addToComida(_ value: Comida)

    @objc(removeComidaObject:)
    @NSManaged public func removeFromComida(_ value: Comida)

    @objc(addComida:)
    @NSManaged public func addToComida(_ values: NSSet)

    @objc(removeComida:)
    @NSManaged public func removeFromComida(_ values: NSSet)

}
