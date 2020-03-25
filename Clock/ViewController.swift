//
//  ViewController.swift
//  Clock
//
//  Created by Swope, Thomas on 10/11/18.
//  Copyright © 2018 Swope, Thomas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    let clock = Clock()
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateTimeLabel()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimeLabel), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimeLabel(){
        let formatter = DateFormatter()
        formatter.timeStyle = .medium
        timeLabel.text = formatter.string(from: clock.currentTime)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    deinit{
        if let timer = self.timer{
            timer.invalidate()
        }
    }

    
    
    
    
    
    
    
    
    
}

