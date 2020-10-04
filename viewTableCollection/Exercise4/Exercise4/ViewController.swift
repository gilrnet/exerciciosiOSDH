//
//  ViewController.swift
//  Exercise4
//
//  Created by Gilvã Rocha on 03/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    var arrayNames = [String]()
    
    @IBOutlet weak var namesCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        namesCollectionView.delegate = self
        namesCollectionView.dataSource = self
        
        arrayNames.append("Teste1")
        arrayNames.append("Teste2")
        arrayNames.append("Teste3")
        arrayNames.append("Teste4")
        arrayNames.append("Teste5")
        arrayNames.append("Teste6")
        arrayNames.append("Teste7")
        arrayNames.append("Teste8")
        arrayNames.append("Teste9")
        arrayNames.append("Teste10")
        arrayNames.append("Teste11")
        arrayNames.append("Teste12")
        arrayNames.append("Teste13")
        arrayNames.append("Teste14")
        arrayNames.append("Teste15")
        arrayNames.append("Teste16")
        arrayNames.append("Teste17")
        arrayNames.append("Teste18")
        arrayNames.append("Teste19")
        arrayNames.append("Teste20")
    }
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        arrayNames.remove(at: indexPath.row)
        print(arrayNames)
        collectionView.reloadData()
    }
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NamesCollectionViewCell", for: indexPath) as! NamesCollectionViewCell
        cell.setup(name: arrayNames[indexPath.row])
        return cell
    }
}
