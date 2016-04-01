//
//  MainViewController.swift
//  Vingle-lunch
//
//  Created by SHINMILL on 3/30/16.
//  Copyright © 2016 SHINMILL. All rights reserved.
//

import UIKit
import Alamofire

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Alamofire.request(.GET, "http://home.junmo.kim/vingle-lunch/api/users")
            .responseJSON { response in
                debugPrint(response.result.value)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}