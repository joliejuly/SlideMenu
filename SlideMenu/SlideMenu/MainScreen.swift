//
//  ViewController.swift
//  SlideMenu
//
//  Created by Julia Nikitina on 03/09/2018.
//  Copyright © 2018 Julia Nikitina. All rights reserved.
//

import UIKit

final class MainScreen: UIViewController {

    private var menuIsShown = false
    
    @IBOutlet weak var menuWidthConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var mainViewLeading: NSLayoutConstraint!
    
    @IBOutlet weak var mainViewTrailing: NSLayoutConstraint!
    
    
    @IBAction func menuBtnTapped(_ sender: UIBarButtonItem) {
        handleMenu()
    }
    
    
    @IBAction func swipedToRight(_ sender: UISwipeGestureRecognizer) {
        
        handleMenu()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    
    private func handleMenu() {
        if menuIsShown {
            
            view.layoutIfNeeded()
            UIView.animate(withDuration: 0.4) {
                self.mainViewLeading.constant = 0
                self.mainViewTrailing.constant = 0
                self.view.layoutIfNeeded()
            }
            
        } else {
            view.layoutIfNeeded()
            UIView.animate(withDuration: 0.4) {
                self.mainViewLeading.constant = 140
                self.mainViewTrailing.constant = -140
                self.view.layoutIfNeeded()
            }
        }
        
        menuIsShown = !menuIsShown
    }
}

