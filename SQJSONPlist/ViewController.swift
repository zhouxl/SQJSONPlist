//
//  ViewController.swift
//  SQJSONPlist
//
//  Created by 小六 on 1月10日.
//  Copyright © 2016年 小六. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let list = SQJSONPlist.loadGEOJSONFromFileName("Color") as! NSArray
        print(list)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

