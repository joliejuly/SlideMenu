//
//  ViewController.swift
//  SlideMenu
//
//  Created by Julia Nikitina on 03/09/2018.
//  Copyright © 2018 Julia Nikitina. All rights reserved.
//

import UIKit

class MainScreen: UIViewController {

    var menuIsShown
    @IBOutlet weak var menuWidthConstraint: NSLayoutConstraint!
    
    @IBAction func menuBtnTapped(_ sender: UIBarButtonItem) {
        
        view.layoutIfNeeded()
        UIView.animate(withDuration: 0.4) {
            self.menuWidthConstraint.constant = 140
            self.view.layoutIfNeeded()
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuWidthConstraint.constant = 0
    }


}

