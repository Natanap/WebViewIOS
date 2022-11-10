//
//  ViewController.swift
//  WebView
//
//  Created by Natanael Alves Pereira on 08/11/22.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    var escolha = ""
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string:"https://www.\(escolha).com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
}

