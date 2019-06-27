//
//  ViewController.swift
//  Get Playin!
//
//  Created by scott shelton on 6/4/19.
//  Copyright © 2019 scott shelton. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var NewCharacterButton: DesignableButton!
    @IBOutlet weak var SnapshotTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        SnapshotTextView.text = "Tap New Character Button to Get Playin!"
    }
    
    @IBAction func NewCharacterButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Dice", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "diceStoryboard") as UIViewController
        present(vc, animated: true, completion: nil)
    }
    
}
