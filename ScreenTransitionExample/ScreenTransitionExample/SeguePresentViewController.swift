//
//  SeguePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by SOLDA on 2022/02/26.
//

import UIKit

class SeguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func tabBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated:true, completion: nil)
    }
}
