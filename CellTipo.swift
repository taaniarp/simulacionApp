//
//  CellTipo.swift
//  simulacionApp
//
//  Created by Tania Ramon on 16/3/18.
//  Copyright © 2018 Tania Ramon. All rights reserved.
//

import UIKit

class CellTipo: UITableViewCell {

    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var imgTipo: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
