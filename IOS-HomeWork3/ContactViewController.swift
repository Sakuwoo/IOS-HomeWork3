//
//  ContactViewController.swift
//  IOS-HomeWork3
//
//  Created by Sevara on 5/6/23.
//

import UIKit

class ContactViewController:
    UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var persons: [Person] = [Person(name: "Medina", image: "image1", number: "0222567898"),
                                     Person(name: "Akylai", image: "image2", number: "0505051845"),
                                     Person(name: "Nuraika", image: "image3", number: "0779671234"),
                                     Person(name: "Ayana", image: "Ayana", number: "0707234224"),                                     Person(name: "Atai", image: "Atai", number: "0508345676"),]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    

}

extension ContactViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        let person = persons[indexPath.row]
        cell.textLabel?.text = person.name
        cell.imageView?.image = UIImage(named: person.image)
        cell.detailTextLabel?.text = person.number
        return cell
    }
}

