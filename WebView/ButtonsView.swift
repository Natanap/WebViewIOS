//
//  ButtonsView.swift
//  WebView
//
//  Created by Natanael Alves Pereira on 08/11/22.
//

import Foundation
import UIKit

public protocol ButtonsViewProtocol: AnyObject{
    func clickButton(escolha: String)
}

class ButtonsView: UIView {
    
    private weak var delegate: ButtonsViewProtocol?
    
    func delegate(delegate: ButtonsViewProtocol?){
        self.delegate = delegate
    }
    
    lazy var facebookButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Facebook", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = .green
        button.addTarget(self, action: #selector(self.tappedFacebook), for: .touchUpInside)
        
        return button
    }()
    
    lazy var appleButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Apple", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = .green
        button.addTarget(self, action: #selector(self.tappedApple), for: .touchUpInside)
        
        return button
    }()
    
    lazy var youtubeButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Youtube", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = .green
        button.addTarget(self, action: #selector(self.tappedYoutube), for: .touchUpInside)
        
        return button
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .blue
        self.adicionaView()
        self.setUpConstraints()
    }
    
    
    @objc private func tappedFacebook(){
        self.delegate?.clickButton(escolha: "facebook")
    }
    
    @objc private func tappedYoutube(){
        self.delegate?.clickButton(escolha: "youtube")
    }
    
    @objc private func tappedApple(){
        self.delegate?.clickButton(escolha: "apple")
    }
    
    func adicionaView() {
        self.addSubview(facebookButton)
        self.addSubview(youtubeButton)
        self.addSubview(appleButton)
    }
    
    private func setUpConstraints(){
        NSLayoutConstraint.activate([
            facebookButton.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 90),
            facebookButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            facebookButton.widthAnchor.constraint(equalToConstant: 100),
            facebookButton.heightAnchor.constraint(equalToConstant: 30),
            
            appleButton.topAnchor.constraint(equalTo: self.facebookButton.bottomAnchor, constant: 40),
            appleButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            appleButton.widthAnchor.constraint(equalToConstant: 100),
            appleButton.heightAnchor.constraint(equalToConstant: 30),
            
            youtubeButton.topAnchor.constraint(equalTo: self.appleButton.bottomAnchor, constant: 40),
            youtubeButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            youtubeButton.widthAnchor.constraint(equalToConstant: 100),
            youtubeButton.heightAnchor.constraint(equalToConstant: 30),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
