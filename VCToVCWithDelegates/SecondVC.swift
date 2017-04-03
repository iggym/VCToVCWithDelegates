//
//  SecondVC.swift
//  VCToVCWithDelegates
//
//  Created by Iggy Mwangi on 4/2/17.
//  Copyright © 2017 iggy. All rights reserved.
//

import Foundation
import UIKit

// MARK: Step 1 - Create a delegate protocol that defines the responsibilities of the delegate.
protocol SecondViewControllerDelegate: class {
    //The use of a weak delegate in Swift is only allowed when we have a class protocol. Xcode will complain if you try to use a weak reference to a non-class protocol since structures and enums use value not reference semantics.
    func editLabelOnFirstView(_ text: String)
}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var textFieldSecondVC: UITextField!
 // MARK: Step 2 - Create a delegate property in the delegating class to keep track of the delegate.
    //Using an optional type for the delegate in Swift also means it is automatically set to nil.
    weak var delegate: SecondViewControllerDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func closeViewButtonTapped(_ sender: Any) {
        let text = textFieldSecondVC.text
        
        // MARK: Step 4 - Call the delegate from the delegating object.
        delegate?.editLabelOnFirstView(text!)
        
        self.dismiss(animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
