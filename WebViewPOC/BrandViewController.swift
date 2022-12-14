//
//  BrandViewController.swift
//  WebViewPOC
//
//  Created by IFOCUS on 14/12/22.
//

import UIKit
import WebKit

class BrandViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        let myURL = URL(string: "https://pvfashions.org/shows")
        if let request = myURL {
            let myRequest = URLRequest(url: request)
            webView.load(myRequest)
         }
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
