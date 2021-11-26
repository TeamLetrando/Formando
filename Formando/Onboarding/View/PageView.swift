//
//  AlertView.swift
//  Formando
//
//  Created by Kellyane Nogueira on 14/09/21.
//

import UIKit
import Lottie

protocol PageViewDelegate: AnyObject {
    func startAnimation()
}

enum AnimationType {
    case image, json
}
final class PageView: UIView, ViewCodable {
    
    private lazy var animationName = String()
    private lazy var message = String()
    var animationType: AnimationType = .json
    
    fileprivate lazy var mascotAnimation: AnimationView = {
        let animation = AnimationView(name: animationName)
        animation.contentMode = .scaleAspectFit
        animation.loopMode = .loop
        animation.animationSpeed = 0.8
        animation.play()
        animation.backgroundBehavior = .pauseAndRestore
        animation.translatesAutoresizingMaskIntoConstraints = false
        return animation
    }()
    
    fileprivate lazy var mascotAnimationImage: UIImageView = {
        let animationImage = UIImage(named: animationName)
        let animation = UIImageView(image: animationImage)
        animation.contentMode = .scaleAspectFit
        animation.translatesAutoresizingMaskIntoConstraints = false
        return animation
    }()
    
    private lazy var messageAlert: UILabel = {
        let messageAlert = UILabel()
        messageAlert.text = message
        messageAlert.textAlignment = .center
        messageAlert.numberOfLines = .zero
        messageAlert.font = UIFont.set(size: 28, weight: .bold, textStyle: .largeTitle)
        messageAlert.textColor = .customBrown
        messageAlert.translatesAutoresizingMaskIntoConstraints = false
        return messageAlert
    }()
    
    convenience init(animationName: String, message: String, animationType: AnimationType) {
        self.init()
        self.animationType = animationType
        self.animationName = animationName
        self.message = message
    }
    
    override func didMoveToSuperview() {
        setupView()
    }
    
    func buildViewHierarchy() {
        switch animationType {
        case .image:
            addSubview(mascotAnimationImage)
        case .json:
            addSubview(mascotAnimation)
        }
        addSubview(messageAlert)
    }
    
    func setupConstraints() {
    
        switch animationType {
        case .image:
            mascotAnimationImage.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor,
                                                          constant: 16).isActive = true
            mascotAnimationImage.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor,
                                                           constant: -16).isActive = true
            mascotAnimationImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,
                                                      constant: 80).isActive = true
            mascotAnimationImage.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor,
                                                         multiplier: 0.5).isActive = true
            messageAlert.topAnchor.constraint(equalTo: mascotAnimationImage.bottomAnchor,
                                              constant: 25).isActive = true
        case .json:
            mascotAnimation.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor,
                                                     constant: 16).isActive = true
            mascotAnimation.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor,
                                                      constant: -16).isActive = true
            mascotAnimation.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,
                                                 constant: 80).isActive = true
            mascotAnimation.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor,
                                                    multiplier: 0.5).isActive = true
            messageAlert.topAnchor.constraint(equalTo: mascotAnimation.bottomAnchor,
                                              constant: 25).isActive = true
        }
        
        NSLayoutConstraint.activate([
            messageAlert.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            messageAlert.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
          
            messageAlert.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20)
        ])
    }
    
    func setupAditionalChanges() {
        backgroundColor = .lightOrangeBackgroundFormando
    }
}

extension PageView: PageViewDelegate {
    
    func startAnimation() {
        mascotAnimation.play()
        layoutIfNeeded()
    }
}
