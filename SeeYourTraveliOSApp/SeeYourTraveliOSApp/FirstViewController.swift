//
//  FirstViewController.swift
//  SeeYourTraveliOSApp
//
//  Created by Oleksandr Turevskiy on 11/09/15.
//  Copyright (c) 2015 Oleksandr Turevskiy. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    let url = "https://seeyourtravel.com/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let requestURL = NSURL(string:url)
        let request = NSURLRequest(URL: requestURL!)
        webView.loadRequest(request)
    }

    @IBOutlet weak var webView: UIWebView!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

