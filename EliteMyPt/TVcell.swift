//
//  TVcell.swift
//  EliteMyPt
//
//  Created by MacMini6 on 10/02/25.
//

import UIKit

class TVcell: UITableViewCell {

    
    @IBOutlet weak var CellImage: UIImageView!
    
    @IBOutlet weak var label: UILabel!
  
    @IBOutlet weak var downArrow: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
     
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
