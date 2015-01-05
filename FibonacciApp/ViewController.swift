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
    
    
    @IBOutlet weak var numberOfItemsLabel: UILabel!
    
    
    @IBOutlet weak var numberOfItemsSlider: UISlider!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.updateFibonacciSequence( );
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func updateFibonacciSequence() {
        var sliderMax = 94;
        var max_32:UInt = UInt(UInt32.max);
        var max:UInt = UInt.max;
        
        if(max_32 == max){
            //app is running on 32bit device
            sliderMax = 48;
        }
        var zero:Bool = includesZeroSwitch.on;
        if(zero){
            numberOfItemsSlider.maximumValue = Float(sliderMax);
            includesZeroLabel.text = "Yes";
        }
        else{
            numberOfItemsSlider.maximumValue = Float(sliderMax)-1;
            includesZeroLabel.text = "No";
        }
        var totalItems:UInt = UInt(numberOfItemsSlider.value);
        fibonacciSequence = FibonacciSequence(numberOfItemsInSequence: totalItems, includesZero: zero);
        numberOfItemsLabel.text = String(totalItems);
        textView.text = fibonacciSequence.values.description;
    }

}

