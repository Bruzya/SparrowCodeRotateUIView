//
//  BoxView.swift
//  RotateUIView
//
//  Created by Evgenii Mazrukho on 09.11.2023.
//

import UIKit

final class BoxView: UIView {
    
    //MARK: - Properties
    
    
    //MARK: - Initialize
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Methods
    private func setupViews() {
        
    }
}
