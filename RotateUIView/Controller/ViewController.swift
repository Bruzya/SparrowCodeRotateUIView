//
//  ViewController.swift
//  RotateUIView
//
//  Created by Evgenii Mazrukho on 09.11.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    //MARK: - Properties
    var animator: UIViewPropertyAnimator!
    
    //MARK: - UI
    private lazy var boxView = BoxView(frame: CGRect(x: 20, y: 100, width: 100, height: 100))
    private lazy var boxSlider = UISlider(frame: CGRect(x: 20, y: 250, width: view.frame.width - 40, height: 20))
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    //MARK: - Methods
    private func configure() {
        view.backgroundColor = .white

        view.addSubview(boxView)
        boxView.layoutMargins = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        
        view.addSubview(boxSlider)
        boxSlider.layoutMargins = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        boxSlider.addTarget(self, action: #selector(didSlide), for: .touchDragInside)
        boxSlider.addTarget(self, action: #selector(didTap), for: .touchUpInside)
        boxSlider.minimumValue = 0
        boxSlider.maximumValue = Float(view.frame.width)
        boxSlider.isContinuous = true
        
        animator = UIViewPropertyAnimator(duration: 1.5, curve: .easeInOut, animations: {
            self.boxView.transform = CGAffineTransform(rotationAngle: .pi / 2)
            self.boxView.frame = CGRect(x: Int(self.view.frame.width - 155), y: 100, width: 130, height: 130)
        })
    }
    
    @objc private func didSlide(_ sender: UISlider) {
        animator.fractionComplete = CGFloat(sender.value) / 390
        animator.pauseAnimation()
        animator.pausesOnCompletion = true
    }
    
    @objc private func didTap(_ sender: UISlider) {
        sender.setValue(sender.maximumValue, animated: true)
        animator.continueAnimation(withTimingParameters: nil, durationFactor: 1)
    }
}
