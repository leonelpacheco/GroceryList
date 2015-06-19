//
//  ViewController.swift
//  GroceryList
//
//  Created by Leonel Pacehco on 6/19/15.
//  Copyright (c) 2015 Leonel Pacheco. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    let context = (UIApplication.sharedApplication().delegate as!
        AppDelegate).managedObjectContext
    
    var nItem : List? = nil
    
    
    @IBOutlet weak var entityItem: UITextField!
    
    @IBOutlet weak var entityNote: UITextField!
    
    @IBOutlet weak var EntityQty: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if (nItem != nil){
        
            entityItem.text = nItem?.item
            entityNote.text = nItem?.note
            EntityQty.text = nItem?.qty
        
        }
    }

    @IBAction func cancelTapped(sender: AnyObject) {
        
        dissmisVC()
    }
    
    
    @IBAction func addTappend(sender: AnyObject) {
        
        if (nItem != nil){
        editItem()
        }
        else{
        newItem()
        }
        dissmisVC()
        
    }
    
    func dissmisVC(){
    navigationController?.popViewControllerAnimated(true)
    }
    
    func newItem(){
    
    let context = self.context
        
        let ent = NSEntityDescription.entityForName("List", inManagedObjectContext: context!)
        
        let nItem = List (entity: ent!, insertIntoManagedObjectContext: context!)
        
        nItem.item = entityItem.text
        nItem.note = entityNote.text
        nItem.qty = EntityQty.text
        context?.save(nil)
        
    }
    
    func editItem(){
    nItem?.item = entityItem.text
        nItem?.note = entityNote.text
        nItem?.qty = EntityQty.text
        context?.save(nil)
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

