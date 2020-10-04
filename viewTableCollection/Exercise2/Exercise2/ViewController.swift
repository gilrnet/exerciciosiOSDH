//
//  ViewController.swift
//  Exercise2
//
//  Created by Gilvã Rocha on 03/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewAnimals: UITableView!
    
    var arrayAnimals = [Animals]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewAnimals.delegate = self
        tableViewAnimals.dataSource = self
        
        arrayAnimals.append(Animals(name: "Bob", breed: "Poodle", weight: "18", species: "Cachorro"))
        arrayAnimals.append(Animals(name: "Tor", breed: "Siames", weight: "34", species: "Gato"))
        arrayAnimals.append(Animals(name: "Looky", breed: "Shitzu", weight: "21", species: "Cachorro"))
        arrayAnimals.append(Animals(name: "Hercules", breed: "Mangalarga", weight: "97", species: "Cavalo"))
        arrayAnimals.append(Animals(name: "Zala", breed: "Poodle", weight: "100", species: "Cachorro"))
        arrayAnimals.append(Animals(name: "Mike", breed: "GoldenRetrivier", weight: "76", species: "Cachorro"))
        arrayAnimals.append(Animals(name: "Zeus", breed: "Melore", weight: "21", species: "Boi"))
        arrayAnimals.append(Animals(name: "Nick", breed: "Pincher", weight: "21", species: "Cachorro"))
        arrayAnimals.append(Animals(name: "Erus", breed: "Cabra", weight: "21", species: "Bode"))
        arrayAnimals.append(Animals(name: "Kratus", breed: "Mandem", weight: "21", species: "Camelo"))
        
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let screenModal = UIStoryboard(name: "Animals", bundle: nil).instantiateInitialViewController() as? AnimalsViewController {
            present(screenModal, animated: true, completion: nil)
            screenModal.setup(animals: arrayAnimals[indexPath.row])
        }
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayAnimals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalsTableViewCell", for: indexPath) as! AnimalsTableViewCell
        
        cell.setup(animals: arrayAnimals[indexPath.row])
        return cell
    }
}
