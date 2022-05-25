//
//  TimerViewController.swift
//  EggTimer
//
//  Created by Rita Lisboa on 17/05/22.
//

import UIKit

class TimerViewController: UIViewController {

    private var customView: TimerView? = nil
    
    let softTime = 5
    let mediuTime = 8
    let hardTime = 12
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildXylophone()
    }

    private func buildXylophone() {
        view = TimerView()
        customView = view as? TimerView
    }


}

