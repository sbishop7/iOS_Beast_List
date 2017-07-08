//
//  ViewController.swift
//  Beast_List
//
//  Created by Seth Bishop on 7/8/17.
//  Copyright © 2017 Seth Bishop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tasks = [String]()
    
    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func beastButtonPressed(_ sender: UIButton) {
        if (taskTextField.text) != "" {
            tasks.append(taskTextField.text!)
            taskTextField.text = ""
            tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        cell.textLabel?.text = tasks[indexPath.row]
        
        return cell
        
    }
    
}
