//
//  CodePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by SOLDA on 2022/02/26.
//

import UIKit

protocol SendDataDelegate: AnyObject {
    func sendData(name: String)
}

class CodePresentViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    // delegate를 사용할 때 weak를 사용하지 않으면 강한 순환 참조?가 발생하여 메모리 누수 발생할 수 있음
    weak var delegate: SendDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }
    @IBAction func tabBackButton(_ sender: UIButton) {
        self.delegate?.sendData(name: "현선")
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
}
