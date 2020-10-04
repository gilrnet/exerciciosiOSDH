//
//  AnimalsTableViewCell.swift
//  Exercise2
//
//  Created by Gilvã Rocha on 03/10/20.
//

import UIKit

class AnimalsTableViewCell: UITableViewCell {

    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var labelBreed: UILabel!
    
    @IBOutlet weak var labelWeight: UILabel!
    
    @IBOutlet weak var labelSpecies: UILabel!
    
    func setup(animals: Animals) {
        labelName.text = animals.name
        labelBreed.text = animals.breed
        labelWeight.text = animals.weight
        labelSpecies.text = animals.species
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
