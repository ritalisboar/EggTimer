//
//  TimerView.swift
//  EggTimer
//
//  Created by Rita Lisboa on 17/05/22.
//

import UIKit

final class TimerView: UIView {

    private lazy var background: UIView = {
        let background = UIView()
        background.backgroundColor = UIColor(named: "baseColor")
        background.translatesAutoresizingMaskIntoConstraints = false
        return background
    }()
    
    private func constraintsBackground() {
        background.topAnchor.constraint(equalTo: topAnchor).isActive = true
        background.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        background.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        background.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
    
    // MARK: - title
    
    private lazy var titleApp: UILabel = {
        let titleApp = UILabel()
        titleApp.text = "How do you like your eggs?"
        titleApp.font = .systemFont(ofSize: 30)
        titleApp.textColor = .darkGray
        titleApp.textAlignment = .center
        titleApp.numberOfLines = 3
        titleApp.lineBreakMode = .byCharWrapping
        titleApp.translatesAutoresizingMaskIntoConstraints = false
        return titleApp
    }()
    
    private func constraintsTitleApp() {
        titleApp.bottomAnchor.constraint(equalTo: softEgg.topAnchor, constant: -150).isActive = true
        titleApp.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        titleApp.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
    }
    

    // MARK: - egg 1
    
    private lazy var softEgg: UIButton = {
        let softEgg = UIButton()
        softEgg.tintColor = .none
        softEgg.setImage(UIImage(named: "soft_egg"), for: .normal)
        softEgg.addTarget(self, action: #selector(softEggTimer), for: .touchUpInside)
        softEgg.tag = 1
        softEgg.translatesAutoresizingMaskIntoConstraints = false
        return softEgg
    }()
    
    private func constraintsSoftEgg() {
        softEgg.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        softEgg.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        softEgg.heightAnchor.constraint(equalToConstant: 150).isActive = true
        softEgg.widthAnchor.constraint(equalToConstant: 110).isActive = true
    }
    
    @objc func softEggTimer() {
        let softAction = TimerViewController()
//        cAction.cButtonAction()
    }
    
    // MARK: - egg 2
    
    private lazy var mediumEgg: UIButton = {
        let mediumEgg = UIButton()
        mediumEgg.setImage(UIImage(named: "medium_egg"), for: .normal)
        mediumEgg.addTarget(self, action: #selector(mediumEggTimer), for: .touchUpInside)
        mediumEgg.tag = 1
        mediumEgg.translatesAutoresizingMaskIntoConstraints = false
        return mediumEgg
    }()
    
    private func constraintsMediumEgg() {
        mediumEgg.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        mediumEgg.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mediumEgg.heightAnchor.constraint(equalToConstant: 150).isActive = true
        mediumEgg.widthAnchor.constraint(equalToConstant: 110).isActive = true
    }
    
    @objc func mediumEggTimer() {
        let mediumAction = TimerViewController()
//        cAction.cButtonAction()
    }
    
    
    // MARK: - egg 3
    
    private lazy var hardEgg: UIButton = {
        let hardEgg = UIButton()
        hardEgg.setImage(UIImage(named: "hard_egg"), for: .normal)
        hardEgg.addTarget(self, action: #selector(hardEggTimer), for: .touchUpInside)
        hardEgg.tag = 1
        hardEgg.translatesAutoresizingMaskIntoConstraints = false
        return hardEgg
    }()
    
    private func constraintsHardEgg() {
        hardEgg.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        hardEgg.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        hardEgg.heightAnchor.constraint(equalToConstant: 150).isActive = true
        hardEgg.widthAnchor.constraint(equalToConstant: 110).isActive = true
    }
    
    @objc func hardEggTimer() {
        let hardAction = TimerViewController()
//        cAction.cButtonAction()
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        constraintsBackground()
        constraintsTitleApp()
        constraintsSoftEgg()
        constraintsMediumEgg()
        constraintsHardEgg()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }

    private func addSubviews(){
        addSubview(background)
        addSubview(titleApp)
        addSubview(softEgg)
        addSubview(mediumEgg)
        addSubview(hardEgg)
    }


}
