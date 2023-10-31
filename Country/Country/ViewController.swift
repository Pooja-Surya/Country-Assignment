//
//  ViewController.swift
//  Country
//
//  Created by C S Pooja on 26/10/23.
//

import UIKit

class ViewController: UIViewController, CountrySelectionDelegate{
    

    
    
    var replaceButtonWithText: Bool = false
    
    @IBOutlet weak var changeLangText: UIButton!
    
    @IBOutlet weak var selectedCountryImage: UIImageView!
    
    @IBOutlet weak var selectedCountryName: UILabel!
    
    
    var selectedIdentifier: String?
    
    func didSelectCountry(image: UIImage, name: String)
    {
        selectedCountryImage.image = image
        selectedCountryImage.layer.cornerRadius = selectedCountryImage.frame.size.height / 2
//      selectedCountryImage.clipsToBounds = true
        selectedCountryImage.layer.borderWidth = 0.25
        selectedCountryImage.layer.masksToBounds = true
        selectedCountryName.text = name
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedCountryImage.layer.cornerRadius = selectedCountryImage.frame.width / 2
       
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        
//        if replaceButtonWithText{
//            changeLangText = language 
//        }
//    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if let navControl = segue.destination as? UINavigationController,
           let countryVC = navControl.topViewController as? CountryViewController {
            countryVC.delegate = self
        }
  
        
    }
}
