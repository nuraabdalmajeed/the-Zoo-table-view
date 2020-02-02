//
//  ViewController.swift
//  the zoo
//
//  Created by nura on 12/13/19.
//  Copyright © 2019 nura. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
var Killer = ["Bear","Lion","Tiger","Shark","Snake","Fox","Wolf"]

var Notkiller = ["Cat","panda","Elephant","Cow","Baboon","Dog","Rabit"]
var sections = ["Killer","Notkiller"]

    @IBOutlet weak var TableViewlist: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Notkiller.count
    }
    
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    if indexPath.section == 0{
    cell.textLabel?.text = Killer[indexPath.row]
    }else{cell.textLabel?.text = Notkiller[indexPath.row]}
    return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print (Notkiller[indexPath.row])
        
        TableViewlist.reloadData()
    }
   
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? { 
        return sections[section]
        
    }
}


