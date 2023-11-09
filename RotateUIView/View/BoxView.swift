//
//  BoxView.swift
//  RotateUIView
//
//  Created by Evgenii Mazrukho on 09.11.2023.
//

import UIKit

final class BoxView: UIView {
    
    //MARK: - Lifecycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Methods
    private func configure() {
        backgroundColor = .blue
        layer.cornerRadius = 20
    }
}
