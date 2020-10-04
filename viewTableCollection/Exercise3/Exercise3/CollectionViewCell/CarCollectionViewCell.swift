//
//  CarCollectionViewCell.swift
//  Exercise3
//
//  Created by Gilvã Rocha on 03/10/20.
//

import UIKit

class CarCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imagemCar: UIImageView!
    
    @IBOutlet weak var labelName: UILabel!
    
    func setup(car: Car){
        imagemCar.image = UIImage (named: car.nameImage)
        labelName.text = car.name
    }
}

