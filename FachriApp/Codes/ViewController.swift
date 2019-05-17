//
//  ViewController.swift
//  FachriApp
//
//  Created by Fachri Febrian on 17/05/2019.
//  Copyright © 2019 fachrifaul. All rights reserved.
//

import UIKit
import Alamofire
import Core

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Log.d("viewDidLoad")
        
        Alamofire.request("https://httpbin.org/get").responseJSON { response in
            print("Request: \(String(describing: response.request))")   // original url request
            print("Response: \(String(describing: response.response))") // http url response
            print("Result: \(response.result)")                         // response serialization result
            
            if let json = response.result.value {
                print("JSON: \(json)") // serialized json response
            }
            
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data: \(utf8Text)") // original server data as UTF8 string
            }
        }
    }


}

