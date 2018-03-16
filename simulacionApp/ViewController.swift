//
//  ViewController.swift
//  simulacionApp
//
//  Created by Tania Ramon on 2/3/18.
//  Copyright © 2018 Tania Ramon. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    var managedContext:NSManagedObjectContext!
    
    let appDelegate = UIApplication.shared.delegate as? AppDelegate
    
    @IBOutlet weak var inputName: UITextField!
    @IBOutlet weak var inputPass: UITextField!
    
    @IBAction func inicio(_ sender: Any) {
        recuperarUser(nombre: inputName.text, password: inputPass.text)
        print(recuperarUser(nombre: inputName.text, password: inputPass.text))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        managedContext = appDelegate?.persistentContainer.viewContext
    }
    
    
    func recuperarUser(nombre: String?, password: String?) -> Bool {
        let fetchRequest = NSFetchRequest<Usuarios>(entityName: "Usuarios")
        if let nombre = nombre, let password = password {
            fetchRequest.predicate = NSPredicate(format: "nombre == %@", nombre,"password == %@", password)
        }
        do {
            let results = try managedContext.fetch(fetchRequest)
            if results.count > 0 {
                let u = results.first!
                print("Se ha encontrado este usuario: \(String(describing: u.nombre))")
                return true
            }else {
                print("No hay usuarios")
                return false
            }
        } catch let error as NSError {
            print("Error al recuperar: \(error)")
        }
        return false
    }
    
    func modificar(u: Usuarios){
        u.nombre = "Gemma"
        u.password = "4321"
        
        do {
            try managedContext.save()
        } catch let error as NSError {
            print("Error al modificar: \(error)")
        }
    }
    
    func eliminar(u: Usuarios) {
        managedContext.delete(u)
        
        do {
            try managedContext.save()
        } catch let error as NSError {
            print("Error al eliminar: \(error)")
        }
    }
}

