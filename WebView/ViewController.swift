//
//  ViewController.swift
//  WebView
//
//  Created by Natanael Alves Pereira on 08/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var buttonsView: ButtonsView?

    override func loadView() {
        self.buttonsView = ButtonsView()
        self.view = self.buttonsView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.buttonsView?.delegate(delegate: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
}

extension ViewController: ButtonsViewProtocol {
    func clickButton(escolha: String) {
        let vc = WebViewController()
        vc.escolha = escolha
        self.navigationController?.pushViewController(vc, animated: false)
    }
}
