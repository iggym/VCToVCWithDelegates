//
//  SecondVC.swift
//  VCToVCWithDelegates
//
//  Created by Iggy Mwangi on 4/2/17.
//  Copyright © 2017 iggy. All rights reserved.
//

import Foundation
import UIKit

protocol SecondViewControllerDelegate: class {
    func editLabelOnFirstView(_ text: String)
}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var textFieldSecondVC: UITextField!
    
    weak var delegate: SecondViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func closeViewButtonTapped(_ sender: Any) {
        let text = textFieldSecondVC.text
        
        delegate?.editLabelOnFirstView(text!)
        
        self.dismiss(animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
