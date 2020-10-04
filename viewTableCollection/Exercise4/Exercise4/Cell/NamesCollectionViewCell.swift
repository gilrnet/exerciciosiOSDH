//
//  NamesCollectionViewCell.swift
//  Exercise4
//
//  Created by Gilvã Rocha on 03/10/20.
//

import UIKit

class NamesCollectionViewCell: UICollectionViewCell {
    
@IBOutlet weak var labelName: UILabel!

    func setup(name: String) {
        labelName.text = name
    }
    
}
