//
//  PersonTableViewCell.swift
//  Exercise1
//
//  Created by Gilvã Rocha on 03/10/20.
//

import UIKit

class PersonTableViewCell: UITableViewCell {

    @IBOutlet weak var labalName: UILabel!
    
    @IBOutlet weak var labalOffice: UILabel!
    
    @IBOutlet weak var labalEmail: UILabel!
    
    func setup(person: Person){
        labalName.text = person.name
        labalOffice.text = person.office
        labalEmail.text = person.email
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
