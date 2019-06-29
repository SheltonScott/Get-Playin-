//
//  ViewController.swift
//  Get Playin!
//
//  Created by scott shelton on 6/4/19.
//  Copyright © 2019 scott shelton. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class MainViewController: UIViewController {
    
    var ref: DatabaseReference!
    
    @IBOutlet weak var NewCharacterButton: DesignableButton!
    @IBOutlet weak var SnapshotTextView: UITextView!
    @IBOutlet weak var PreviousCharacterButton: DesignableButton!
    
    var characterName = ""
    var characterRace = ""
    var characterClass = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ref = Database.database().reference()
        
        SnapshotTextView.text = "Previous Character functionality is currently under construction!"
        
        self.ref.child("Character/Name").observeSingleEvent(of: .value) {
            (snapshot) in
            self.characterName = (snapshot.value as? String)!
            self.PreviousCharacterButton.setTitle(self.characterName, for: .normal)
        }
    }
    
    @IBAction func NewCharacterButtonTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Dice", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "diceStoryboard") as UIViewController
        present(vc, animated: true, completion: nil)
    }
    
}
