//
//  ViewController.swift
//  WebViewPOC
//
//  Created by IFOCUS on 05/12/22.
//

import UIKit
import WebKit

class HomeViewController: UIViewController, WKUIDelegate {

    @IBOutlet var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadView()
        let myURL = URL(string: "https://pvfashions.org")
        if let request = myURL {
            let myRequest = URLRequest(url: request)
            webView.load(myRequest)
            let bottomSpace = -300    //or however large
            webView.scrollView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: CGFloat(bottomSpace), right: 0)
            webView.scrollView.bounces = false
         }
        let buttonFrame = CGRect(x: 10, y:500, width: 50, height: 50)
        let button = UIButton(frame: buttonFrame)
        button.backgroundColor = UIColor.clear
        button.tintColor = UIColor.green
        button.setImage(UIImage(named: "whatsapp"), for: .normal)
        button.addTarget(self, action:#selector(handleTapOnWhatapp), for: .touchUpInside)
        button.clipsToBounds = true
        button.layer.cornerRadius = 0.5 * button.bounds.size.width
        self.webView.addSubview(button)
    }
    override func viewWillAppear(_ animated: Bool) {
        //Code
    }
    
    @objc func handleTapOnWhatapp(){
        let whatsappURL = NSURL(string: "whatsapp://")
        if UIApplication.shared.canOpenURL(whatsappURL! as URL) {
            UIApplication.shared.openURL(whatsappURL! as URL)
        } else {
            //Code
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

