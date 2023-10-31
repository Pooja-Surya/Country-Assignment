//
//  LanguageViewController.swift
//  Country
//
//  Created by C S Pooja on 31/10/23.
//

import Foundation
import UIKit



class LanguageViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
  
    
    @IBOutlet weak var languageTableView: UITableView!
    
    var countryLanguage: CountryLanguageModel?
    
  //  var replaceButtonWithText: Bool = false
    
    let chooseLangData: [(String)] = [("English"),
    ("Arabic")]
    

    @IBAction func onTapClose(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    //registering nib
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "LanguageTableViewCell", bundle: nil)
        languageTableView.register(nib, forCellReuseIdentifier: "LanguageTableViewCell")
        
        
    }
    
    //rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chooseLangData.count
    }
    //for each row display
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = languageTableView.dequeueReusableCell(withIdentifier: "LanguageTableViewCell", for: indexPath) as? LanguageTableViewCell
        let (language) = chooseLangData[indexPath.row]
        cell?.onClickChangeLanguage.text = language
      

        return cell ?? UITableViewCell()
    }
    
    //deselection of a row
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        if let cell = languageTableView.cellForRow(at: indexPath) as? LanguageTableViewCell{
            cell.onClickChangeLanguage.isHidden = true
        }
    }
    //didSelectRow
    func  tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) as? LanguageTableViewCell{
            cell.checkLanguage.isHidden = false
        }
    }
    
}
