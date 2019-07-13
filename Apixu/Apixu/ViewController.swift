//
//  ViewController.swift
//  Apixu
//
//  Created by Ngoc on 7/1/19.
//  Copyright © 2019 Ngoc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var detailWeather: Weather?
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblCountry: UILabel!
    @IBOutlet weak var lblLast_update: UILabel!
    @IBOutlet weak var lblTempC: UILabel!
    @IBOutlet weak var lblTempF: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDataFromAPI()
        
    }
    
    func setDataFromAPI() {
        DataService.shareIntance.getWeather{ data in
           self.detailWeather = data
            self.display()
        }
    }
    
    func display() {
        lblName.text = detailWeather?.location.name
        lblCountry.text = detailWeather?.location.country
        lblLast_update.text = detailWeather?.current.last_updated

        lblTempC.text = String(describing: detailWeather!.current.temp_c) + "°C"
        
        lblTempF.text = String(describing: detailWeather!.current.temp_f) + "°F"
    }
    
    

    

}

