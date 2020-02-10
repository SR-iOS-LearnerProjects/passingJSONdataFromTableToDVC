//
//  DetailViewController.swift
//  GetJSONDataIntoTableCell
//
//  Created by Sridatta Nallamilli on 22/12/19.
//  Copyright © 2019 Sridatta Nallamilli. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var alpha2Lbl: UILabel!
    @IBOutlet weak var alpha3Lbl: UILabel!
    @IBOutlet weak var regionLbl: UILabel!
    @IBOutlet weak var subRegionLbl: UILabel!
    
    
    var strName = ""
    var strAlphaTwo = ""
    var strAlphaThree = ""
    var strRegion = ""
    var strSubRegion = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        nameLbl.text = strName
        alpha2Lbl.text = strAlphaTwo
        alpha3Lbl.text = strAlphaThree
        regionLbl.text = strRegion
        subRegionLbl.text = strSubRegion
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}



