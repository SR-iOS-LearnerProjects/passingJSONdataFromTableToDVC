//
//  ViewController.swift
//  GetJSONDataIntoTableCell
//
//  Created by Sridatta Nallamilli on 22/12/19.
//  Copyright © 2019 Sridatta Nallamilli. All rights reserved.
//

import UIKit

struct countryDataJson: Decodable {
    let name: String
    let capital: String
    let alpha2Code: String
    let alpha3Code: String
    let region: String
    let subregion: String
}

class ViewController: UIViewController {

    var jsonDataArr = [countryDataJson]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        getData()
    }
    
    func getData() {
        let url = URL(string: "https://restcountries.eu/rest/v2/all")
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            do {
                if error == nil {
                    self.jsonDataArr = try JSONDecoder().decode([countryDataJson].self, from: data!)
                    
                    for arr in self.jsonDataArr {
                        print(arr.name)
                    }
                    
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                }
            } catch {
                print("Error in getting JSON Data!!!")
            }
            
        }.resume()
        
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.jsonDataArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "countries", for: indexPath) as! CountryTableViewCell
        cell.cName.text = jsonDataArr[indexPath.row].name
        cell.cCapital.text = jsonDataArr[indexPath.row].capital
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "DetailVC") as! DetailViewController
        
        vc.strName = jsonDataArr[indexPath.row].name
        vc.strAlphaTwo = jsonDataArr[indexPath.row].alpha2Code
        vc.strAlphaThree = jsonDataArr[indexPath.row].alpha3Code
        vc.strRegion = jsonDataArr[indexPath.row].region
        vc.strSubRegion = jsonDataArr[indexPath.row].subregion
      
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

