//
//  ViewController.swift
//  myFirstProject
//
//

import UIKit

class ViewController: UIViewController {
    
    
    var currentValue:Int = 0
    @IBOutlet weak var bountyLabel.UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        refresh()
    }
    
    @IBAction func showAlert(){
        
        let message="현상금은 \(currentValue)입니다.";
        
        let alert=UIAlertController(title:"Hello",message: message,preferredStyle:.alert )
        let action=UIAlertAction(title:"ok",style: .default,handler: nil)
        alert.addAction(action)
        present(alert,animated:true,completion:nil)
        
        refresh()
    }
    
    func refresh(){
        let randomNum=arc4random_uniform(100000)+1
        currentValue = Int(randomNum)
        bountyLabel.text="₩ \(currentValue)"
    }
    
    
    
}

