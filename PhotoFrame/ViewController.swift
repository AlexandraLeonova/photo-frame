//
//  ViewController.swift
//  PhotoFrame
//
//  Created by Александра Леонова on 28.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let onTitle = "Put frame on"
    private let offTitle = "Hide frame"
    
    var isFrameOn = false
    
    private let myView = View()
    
    override func loadView() {
        view = myView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myView.button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        updateUI()
    }
    
    @objc
    private func didTapButton() {
        updateUI()
    }
    
    func updateUI() {
        if isFrameOn {
            myView.button.setTitle(offTitle, for: .normal)

            UIView.animate(withDuration: 1) {
                self.myView.imageView.backgroundColor = .systemRed
            }
        } else {
            myView.button.setTitle(onTitle, for: .normal)

            UIView.animate(withDuration: 1) {
                self.myView.imageView.backgroundColor = .clear
            }
            
        }
        isFrameOn.toggle()
    }
}



