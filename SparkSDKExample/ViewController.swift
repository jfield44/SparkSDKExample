//
//  ViewController.swift
//  SparkSDKExample
//
//  Created by Jonathan Field on 10/05/2017.
//  Copyright © 2017 Cisco. All rights reserved.
//

import UIKit
import SparkSDK

class ViewController: UIViewController, SparkMediaViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func startSparkCall(_ sender: UIButton) {
        // Who are you?
        let sparkMedia = SparkMediaView(authType: .sparkId ,apiKey: "API_KEY", delegate: self)
        
        // Who do you want to call? Is it Voice or Video?
        sparkMedia.videoCall(recipient: "RECIPIENT_URI")
        
        // Where should I display the call view?
        self.present(sparkMedia, animated: true, completion: nil)
    }
    
    func callDidComplete() {
        // Add your handling logic here
    }
    
    func callFailed(withError: String) {
        // Add your handling logic here
    }

}

