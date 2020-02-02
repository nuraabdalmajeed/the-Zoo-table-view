//
//  celln.swift
//  the zoo
//
//  Created by nura on 12/13/19.
//  Copyright © 2019 nura. All rights reserved.
//

import UIKit

class celln: UITableViewCell {
 
    @IBOutlet weak var animalimage: UIImageView!
    @IBOutlet weak var animaldescreaption: UITextView!
    @IBOutlet weak var animallabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
        
        // Configure the view for the selected state
    }

  
}
