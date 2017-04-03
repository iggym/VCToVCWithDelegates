//
//  ViewController.swift
//  VCToVCWithDelegates
//
//  Created by Iggy Mwangi on 4/2/17.
//  Copyright © 2017 iggy. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController ,SecondViewControllerDelegate{

    @IBOutlet weak var labelFirstVC: UILabel!
    
    
    func editLabelOnFirstView(_ text: String) {
        labelFirstVC.text = text
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let secondViewController = segue.destination as! SecondViewController
        
        secondViewController.delegate = self
        
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

