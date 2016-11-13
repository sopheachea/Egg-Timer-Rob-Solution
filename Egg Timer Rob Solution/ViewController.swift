//
//  ViewController.swift
//  Egg Timer Rob Solution
//
//  Created by sophea chea on 11/13/16.
//  Copyright © 2016 sophea chea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var time = 210
    var isPlaying = true
    

    @IBOutlet weak var lblDisplay: UILabel!
    
    @IBAction func btnPlay(_ sender: Any) {
        if isPlaying {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decressTimer), userInfo: nil, repeats: true)
        }
        
        isPlaying = false
    }
    
    @IBAction func btnPause(_ sender: Any) {
        timer.invalidate()
        
        isPlaying = true
    }
    
    @IBAction func btnReset(_ sender: Any) {
        time = 210
        lblDisplay.text = String(time)
    }
    
    @IBAction func btnAddTen(_ sender: Any) {
        time += 10
        lblDisplay.text = String(time)
    }
    
    @IBAction func btnMinusTen(_ sender: Any) {
        if time > 10 {
            time -= 10
            lblDisplay.text = String(time)
        }
    }
    
    func decressTimer() {
        if time > 0 {
            time -= 1
            lblDisplay.text = String(time)
            
            }else{
            timer.invalidate()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

