//
//  ViewController.swift
//  FamilyTree
//
//  Created by Philips on 21/09/17.
//  Copyright © 2017 mushtaque87. All rights reserved.
//

import UIKit
import Foundation
import CoreData

class ViewController: UIViewController {

    
    @IBOutlet weak var name: UITextField!
    @IBOutlet var add: UIView!
    
    var coredata: CoreDataStack?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
       coredata  = CoreDataStack.init(modelName: "FamilyTree")!
        
        print(coredata!)
        print("\n********\n")
        
        print(coredata?.context)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
     func addmember(_ sender: Any) {
        var person : Person = NSEntityDescription.insertNewObject(forEntityName: "Person", into: (coredata?.context)!) as! Person
        person.name = name.text
        do {
            try coredata?.saveContext()
        } catch  {
            print("saved failed");
        }
    }
    
  @IBAction  func fetchData(_ sender: Any)
    {
    let fetchRequest:NSFetchRequest<Person> = Person.fetchRequest()
        do{
            let searchRequest = try coredata?.context.fetch(fetchRequest)
            for result in searchRequest as! [Person] {
                print("\(result.name)")
            }
        }
        catch{
            
        }
    }

    
    
    @IBAction func readData(_ sender: Any) {
        
        let fetchRequest:NSFetchRequest<Person> = Person.fetchRequest()
        do{
            let searchRequest = try coredata?.context.fetch(fetchRequest)
            for result in searchRequest as! [Person] {
                print("\(result.name)")
            }
        }
        catch{
            print("Error \(error)")
        }
        
    }
    
    
      @IBAction func updateData(_ sender: Any) {
        let fetchRequest:NSFetchRequest<Person> = Person.fetchRequest()
        let predicate: NSPredicate = NSPredicate(format: "name contains [c] %@", name.text!)
        fetchRequest.predicate = predicate
        
        do{
            let searchRequest = try coredata?.context.fetch(fetchRequest)
            for result in searchRequest as! [Person] {
                print("\(result.name)")
                
                
            }
        }
        catch{
            print("Error \(error)")
        }

        
    }
    
    @IBAction func dropAllData(_ sender: Any) {
        do {
            try coredata?.dropAllData()
        } catch  {
            print("Cant drop all datas")
        }
        
        
    }
    
    
}

