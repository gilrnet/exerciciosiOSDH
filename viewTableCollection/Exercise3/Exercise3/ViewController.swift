//
//  ViewController.swift
//  Exercise3
//
//  Created by Gilvã Rocha on 03/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    var arrayCar = [Car]()

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        arrayCar.append(Car(name: "Nivus", nameImage: "car.jpg"))
        arrayCar.append(Car(name: "Nivus", nameImage: "car.jpg"))
        arrayCar.append(Car(name: "Nivus", nameImage: "car.jpg"))
        arrayCar.append(Car(name: "Nivus", nameImage: "car.jpg"))
        arrayCar.append(Car(name: "Nivus", nameImage: "car.jpg"))
    }
}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let screenNavigation = UIStoryboard(name: "Navigation", bundle: nil).instantiateInitialViewController() as? NavigationViewController{
            navigationController?.pushViewController(screenNavigation, animated: true)
            
            screenNavigation.setCar(car: arrayCar[indexPath.row])
        }
    }
    
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayCar.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarCollectionViewCell", for: indexPath) as! CarCollectionViewCell
        
        cell.setup(car: arrayCar[indexPath.row])
        return cell
    }
    
    
}
