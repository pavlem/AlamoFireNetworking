//
//  ViewController.swift
//  AlamoFireTest
//
//  Created by Pavle Mijatovic on 3/22/16.
//  Copyright © 2016 Carnegie Technologies. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

struct httpTestData {
  let url : String?
  let origin : String?
  let host: String?
  
  init (jsonData: JSON) {
    url = jsonData["url"].stringValue
    origin = jsonData["origin"].stringValue
    host = jsonData["headers"]["Host"].stringValue
  }
}

class ViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    Alamofire.request(.GET, "https://httpbin.org/get", parameters: ["foo": "bar"])
      .response { request, response, data, error in
//        print(request)
//        print(response)
//        print(data)
//        print(error)
        
//        let jsonData = JSON(data: data!)
//        print(jsonData)
//
//        
//        let url = jsonData["url"].stringValue
//        let origin = jsonData["origin"].stringValue
//        let host = jsonData["headers"]["Host"].stringValue
//        
//        print(url)
//        print(origin)
//        print(host)
        
        let testHttpModel = httpTestData(jsonData: JSON(data: data!))
        print(testHttpModel)
    }
  }
}

