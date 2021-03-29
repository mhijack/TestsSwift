//
//  RoundImageView.swift
//  TestIOS
//
//  Created by Jianyuan Chen on 2021-03-28.
//

import UIKit
import Stevia

class RoundImageView: UIView {

    lazy var imageView: UIImageView = UIImageView()
    
    private var borderWidth: CGFloat = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        subviews(imageView)
    }
    
    public func setStyle(borderWidth: CGFloat = 0) {
        self.borderWidth = borderWidth
        imageView.layer.cornerRadius = (imageView.heightConstraint?.constant ?? 0) - borderWidth
        updateUI()
    }
    
    private func updateUI() {
        imageView.Height == Height - borderWidth
        imageView.Width == Width - borderWidth
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
