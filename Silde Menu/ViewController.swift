//
//  ViewController.swift
//  Silde Menu
//
//  Created by dohien on 6/18/18.
//  Copyright © 2018 hiền hihi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var trailingC: NSLayoutConstraint!
    @IBOutlet weak var leadingC: NSLayoutConstraint!
    @IBOutlet weak var ubeView: UIView!
    var hamburgerMenuIsVisible : Bool = false
    @IBAction func hamburgerBtnTapped(_ sender: UIBarButtonItem) {
        if !hamburgerMenuIsVisible {
            hamburgerMenuIsVisible = true
            leadingC.constant = 200
//            trailingC.constant = -150
        }else{
            hamburgerMenuIsVisible = false
            leadingC.constant = 0
            trailingC.constant = 0
            hamburgerMenuIsVisible = false
        }
        UIView.animate(withDuration: 0.3, delay: 0.0, options: .curveEaseIn, animations: {self.view.layoutIfNeeded()}){
            (animationComplete) in
            print("The animation is complete!")
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

