//
//  ViewController.swift
//  AutoConditionTest
//
//  Created by admin on 19.08.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var indicator: UIView!
    @IBAction func shortBURButtonPressed(_ sender: Any) {
        if autoCondition != 0 {
            autoCondition = 0
            manualCondition.toggle()
        } else {
            autoCondition = 1
            manualCondition.toggle()
        }
        check()
    }
    @IBAction func longBURButtonPressed(_ sender: Any) {
        if autoCondition == 2 {
            autoCondition = 0
            manualCondition.toggle()
        } else {
            autoCondition = 2
            manualCondition.toggle()
        }
        check()
    }
    @IBAction func shortKPButtonPressed(_ sender: Any) {
        if autoCondition != 0 {
            autoCondition = 0
            manualCondition.toggle()
        } else {
            autoCondition = 0
            manualCondition.toggle()
        }
        check()
    }
    @IBAction func longKPButtonPressed(_ sender: Any) {
        if autoCondition == 2 {
            autoCondition = 0
            manualCondition.toggle()
        } else {
            autoCondition = 2
            manualCondition.toggle()
        }
        check()
    }
    @IBAction func autoUVOAButtonPressed(_ sender: Any) {
        if autoCondition != 0 {
            autoCondition = 0
            manualCondition = false
        }
        check()
    }
    @IBAction func manualUVOAButtonPressed(_ sender: Any) {
        if autoCondition != 1 {
            autoCondition = 1
            manualCondition = true
        }
        check()
    }
    @IBAction func blockUVOAButtonPressed(_ sender: Any) {
        if autoCondition != 2 {
            autoCondition = 2
            manualCondition = true
        }
        check()
    }
    @IBAction func doorsOpenedButtonPressed(_ sender: Any) {
        doorsCondition = 1
        if autoCondition == 0 {
            autoCondition = 1
        }
        check()
    }
    @IBAction func doorsClosedButtonPressed(_ sender: Any) {
        doorsCondition = 0
        if !manualCondition {
            autoCondition = 0
        }
        check()
    }
    
    var autoCondition = 0
    var manualCondition = false
    var doorsCondition = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    private func check() {
        switch autoCondition {
        case 0:
            indicator.backgroundColor = .green
        case 1:
            indicator.backgroundColor = .yellow
        case 2:
            indicator.backgroundColor = .red
        default:
            return
        }
    }

}


