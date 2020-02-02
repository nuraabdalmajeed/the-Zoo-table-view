//
//  ViewController2.swift
//  the zoo
//
//  Created by nura on 12/13/19.
//  Copyright © 2019 nura. All rights reserved.
//

import UIKit

class ViewController2: UIViewController,UITableViewDelegate,UITableViewDataSource {

var animals =
    Array <animal>()
override func viewDidLoad() {
super.viewDidLoad()
    animals.append(animal(Name: "Bear", Des: "Bear is killer animal", label: "Bear" ))
    animals.append(animal(Name: "Lion", Des: "Lion is killer animal", label: "Lion"))
    animals.append(animal(Name: "Tiger", Des: "Tiger is killer animal", label: "Tiger"))
    animals.append(animal(Name: "Shark", Des: "Shark is killer animal", label: "Shark"))
    animals.append(animal(Name: "Snake", Des: "Snake is killer animal", label: "Snake"))
    animals.append(animal(Name: "Fox", Des: "Fox is killer animal", label: "Fox"))
    animals.append(animal(Name: "Wolf", Des: "Wolf is killer animal", label: "Wolf"))
    animals.append(animal(Name: "Cat", Des: "Cat is notkiller animal", label: "Cat"))
    animals.append(animal(Name: "Panda", Des: "Panda is notkiller animal", label: "Panda"))
    animals.append(animal(Name: "Elephant", Des: "Elephant is notkiller animal", label: "Elephant"))
    animals.append(animal(Name: "Cow", Des: "Cow is notkiller animal", label: "Cow"))
    animals.append(animal(Name: "Baboon", Des: "Baboon is notkiller animal", label: "Baboon"))
    animals.append(animal(Name: "Dog", Des: "Dog is notkiller animal", label: "Dog"))
    animals.append(animal(Name: "Rabit", Des: "Rabit ", label: "Rabit"))
    
    
    // Do any additional setup after loading the view. Cat","panda","Elephant","Cow","Baboon","Dog","Rabit"]
    }

    @IBOutlet weak var tableViewlist: UITableView!
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
let cell1:celln = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! celln
 cell1.animallabel.text = animals [indexPath.row].Name!
 cell1.animaldescreaption.text = animals [indexPath.row].Des!
    cell1.animalimage.image =  UIImage(named:animals [indexPath.row].Image!)
    
    
    
    return cell1
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
