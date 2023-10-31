//
//  LanguageTableViewCell.swift
//  Country
//
//  Created by C S Pooja on 30/10/23.
//

import UIKit

class LanguageTableViewCell: UITableViewCell {

    @IBOutlet weak var onClickChangeLanguage: UILabel!
    
    @IBOutlet weak var checkLanguage: UIImageView!{
        didSet{
            checkLanguage.isHidden = true 
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    
}
