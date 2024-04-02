//
//  View.swift
//  PhotoFrame
//
//  Created by Александра Леонова on 02.04.2024.
//

import UIKit

class View: UIView {
    
    private let imageName = "иллюстрация4"
    
    private(set) lazy var imageView = UIImageView(image: UIImage(named: imageName))
    private lazy var stackView = UIStackView(arrangedSubviews: [imageView, button])

    let button = UIButton(configuration: UIButton.Configuration.tinted())
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        backgroundColor = UIColor.orange
                
        addSubview(stackView)
        stackView.alignment = .center
        stackView.spacing = 25
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        
        button.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 17
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        stackView.frame = layoutMarginsGuide.layoutFrame
    }
}
