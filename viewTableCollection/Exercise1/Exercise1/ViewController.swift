//
//  ViewController.swift
//  Exercise1
//
//  Created by Gilvã Rocha on 03/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewPerson: UITableView!
    
    var arrayPerson = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewPerson.delegate = self
        tableViewPerson.dataSource = self
        
        arrayPerson.append(Person(name: "Carlos", office: "Aposentado", email: "carlos@gmail.com"))
        arrayPerson.append(Person(name: "Rosane", office: "Advogada", email: "rosane@gmail.com"))
        arrayPerson.append(Person(name: "Guilherme", office: "Estudante", email: "guilherme@gmail.com"))
        arrayPerson.append(Person(name: "Elisabete", office: "Aposentada", email: "elisabete@gmail.com"))
        arrayPerson.append(Person(name: "Djava", office: "Quimico", email: "djava@gmail.com"))
        arrayPerson.append(Person(name: "Rodrigo", office: "Policial", email: "rodrigo@gmail.com"))
        arrayPerson.append(Person(name: "Luiza", office: "Professora", email: "luiza@gmail.com"))
        arrayPerson.append(Person(name: "Marcia", office: "Supervisora", email: "marcia@gmail.com"))
        arrayPerson.append(Person(name: "Cleane", office: "Analista", email: "cleane@gmail.com"))
        arrayPerson.append(Person(name: "Mariane", office: "DonadeCasa", email: "mariane@gmail.com"))
        arrayPerson.append(Person(name: "Clea", office: "Pensionista", email: "clea@gmail.com"))
        arrayPerson.append(Person(name: "Marcele", office: "Autonoma", email: "marcele@gmail.com"))
        arrayPerson.append(Person(name: "Ercules", office: "Pedreiro", email: "ercules@gmail.com"))
        arrayPerson.append(Person(name: "Joana", office: "Cuidadora", email: "joana@gmail.com"))
        arrayPerson.append(Person(name: "Renan", office: "Assistente", email: "renan@gmail.com"))
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            if let screenmodal = UIStoryboard(name: "modal", bundle: nil).instantiateInitialViewController() as? modalViewController {
                
                present(screenmodal, animated: true, completion: nil)
                screenmodal.setLabelName(person: arrayPerson[indexPath.row])
            }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayPerson.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonTableViewCell", for: indexPath) as! PersonTableViewCell
        
        cell.setup(person: arrayPerson[indexPath.row])
        return cell
    }
}
