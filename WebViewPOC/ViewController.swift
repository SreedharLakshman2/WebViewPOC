//
//  ViewController.swift
//  WebViewPOC
//
//  Created by IFOCUS on 05/12/22.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {

    @IBOutlet var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let myURL = URL(string: "https://pvfashions.org")
        if let request = myURL {
            let myRequest = URLRequest(url: request)
            webView.load(myRequest)
         }
    }

    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webConfiguration.applicationNameForUserAgent = "Version/8.0.2 Safari/600.2.5"
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }

}

