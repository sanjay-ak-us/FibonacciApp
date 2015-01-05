//
//  ViewController.swift
//  FibonacciApp
//
//  Created by Sanjay on 1/5/15.
//  Copyright (c) 2015 sanjay. All rights reserved.
//

import UIKit;

class ViewController: UIViewController {

    var fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: 12, includesZero: true);
    
    @IBOutlet weak var textView: UITextView!;
    
    @IBOutlet weak var includesZeroSwitch: UISwitch!;
    
    @IBOutlet weak var includesZeroLabel: UILabel!;
    
    
    @IBOutlet weak var numberOfItemsLabel: UILabel!;
    
    @IBOutlet weak var numberOfItemsSlider: UISlider!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateFibonacciSequence(sender: AnyObject, forEvent event: UIEvent) {
        var totalItems:UInt = UInt(numberOfItemsSlider.value);
        var zero:Bool = includesZeroSwitch.on;
        fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: totalItems, includesZero: zero);
        if(zero){
            includesZeroLabel.text = "Yes";
        }
        else{
            includesZeroLabel.text = "No";
        }
        numberOfItemsLabel.text = String(totalItems);
        textView.text = fibonacciSequence.values.description;
    }

}

