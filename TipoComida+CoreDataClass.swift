//
//  TipoComida+CoreDataClass.swift
//  simulacionApp
//
//  Created by Tania Ramon on 7/3/18.
//  Copyright © 2018 Tania Ramon. All rights reserved.
//
//

import Foundation
import CoreData

@objc(TipoComida)
public class TipoComida: NSManagedObject {
    
    func recuperarTipo(managedContext: NSManagedObjectContext) -> [TipoComida]? {
        let fetchRequest = NSFetchRequest<TipoComida>(entityName: "TipoComida")
        //fetchRequest.predicate = NSPredicate(format: "nombre == %@", nombre!)
        
        do {
            let type = try! managedContext.fetch(fetchRequest) as [TipoComida]
            //let results = try managedContext.fetch(fetchRequest)
            if type.count > 0 {
                return nil
            }else {
                print("No hay usuarios")
                return nil
            }
        } catch let error as NSError {
            print("Error al recuperar: \(error)")
        }
        return nil
    }
    
    func readDictionary() {
        var myDict: NSDictionary?
        if let path = Bundle.main.path(forResource: "Config", ofType: "plist") {
            myDict = NSDictionary(contentsOfFile: path)
        }
        if let dict = myDict {
            
        }
    }

}
