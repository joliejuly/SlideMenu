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
    @IBOutlet weak var mainView: UIView!
    
    @IBAction func menuBtnTapped(_ sender: UIBarButtonItem) {
        handleMenu()
    }
    
    @IBAction func swipedToRight(_ sender: UISwipeGestureRecognizer) {
        
        handleMenu()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.layer.shadowOpacity = 3
        mainView.layer.shadowRadius = 6
        mainView.layer.shadowOffset = CGSize(width: 2, height: 2)
    }

    private func handleMenu() {
        if menuIsShown {
            
            view.layoutIfNeeded()
            UIView.animate(withDuration: 0.4) {
                self.mainViewLeading.constant = 0
                self.mainViewTrailing.constant = 0
                self.mainView.layer.cornerRadius = 0
                self.view.layoutIfNeeded()
            }
            
        } else {
            view.layoutIfNeeded()
            UIView.animate(withDuration: 0.4) {
                self.mainViewLeading.constant = 140
                self.mainViewTrailing.constant = -140
                self.mainView.layer.cornerRadius = 20
                self.view.layoutIfNeeded()
            }
        }
        
        menuIsShown = !menuIsShown
    }
}

