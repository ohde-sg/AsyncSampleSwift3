//
//  ViewController.swift
//  AsyncSampleSwift3
//
//  Created by 大出喜之 on 2016/09/18.
//  Copyright © 2016年 yoshiyuki ohde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var elseActionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func touchMyButton(_ sender: UIButton) {
        self.myLabel.text = "loading...";
        DispatchQueue.global().async {
            //something heavy job
            self.heavyJob()
            let sum:UInt32 = arc4random_uniform(10)
            DispatchQueue.main.sync {
                self.myLabel.text = "result:\(sum)"
            }
        }
    }
    @IBAction func touchEleActionButton(_ sender: UIButton) {
        self.elseActionLabel.text = "else: \(arc4random_uniform(10))";
    }
    
    func heavyJob(){
        sleep(3)
    }

}

