//
//  ViewController2.swift
//  simulacionApp
//
//  Created by Tania Ramon on 7/3/18.
//  Copyright © 2018 Tania Ramon. All rights reserved.
//

import UIKit
import CoreData

class ViewController2: UIViewController {

    var managedContext:NSManagedObjectContext!
    let appDelegate = UIApplication.shared.delegate as? AppDelegate
    
    @IBOutlet weak var inputUser: UITextField!
    @IBOutlet weak var inputPass: UITextField!
    @IBOutlet weak var inputPass2: UITextField!
    @IBOutlet weak var lblUser: UILabel!
    @IBOutlet weak var lblContra: UILabel!
    @IBOutlet weak var lblSuccess: UILabel!
    
    @IBAction func confirmar(_ sender: Any) {
        insert()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblUser.isHidden = true
        managedContext = appDelegate?.persistentContainer.viewContext
    }

    func insert() {
        
        let usuariosEntity = NSEntityDescription.entity(forEntityName: "Usuarios", in: managedContext)
        let user = Usuarios(entity: usuariosEntity!, insertInto: managedContext)
        
        if(recuperarUser(nombre: inputUser.text)){
            lblUser.isHidden = false
        }else {
            
            lblUser.isHidden = true
            user.nombre = inputUser.text
            
            if(inputPass.text == inputPass2.text){
                
                user.password = inputPass.text
                do {
                    lblSuccess.isHidden = false
                    try managedContext.save()
                }catch let error as NSError{
                    print("Error al insertar: \(error)")
                }
                lblContra.isHidden = true
                
            }else {
                lblContra.isHidden = false
            }
        }
    }
    
    func recuperarUser(nombre: String?) -> Bool {
        let fetchRequest = NSFetchRequest<Usuarios>(entityName: "Usuarios")
        if let nombre = nombre {
            fetchRequest.predicate = NSPredicate(format: "nombre == %@", nombre)
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

}
