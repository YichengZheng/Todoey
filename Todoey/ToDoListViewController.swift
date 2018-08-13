//
//  ViewController.swift
//  Todoey
//
//  Created by Yicheng Zheng on 8/13/18.
//  Copyright © 2018 Yicheng Zheng. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {
    
    let itemArray = ["Find Mike", "Buy Eggos", "Dess"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // TableView datasource methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        // create tableview cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        // set text label
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    // TableView Delegate methods, detect which row is selected
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(indexPath.row)
//        print(itemArray[indexPath.row])
        tableView.deselectRow(at: indexPath, animated: true)

        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        }else{
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
    }
}

