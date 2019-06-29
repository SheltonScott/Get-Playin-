//
//  CharacterSheetViewController.swift
//  Get Playin!
//
//  Created by scott shelton on 6/28/19.
//  Copyright © 2019 scott shelton. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class CharacterSheetViewController: UIViewController {
    
    var ref: DatabaseReference!
    
    @IBOutlet weak var StrengthScore: DesignableButton!
    @IBOutlet weak var DexterityScore: DesignableButton!
    @IBOutlet weak var ConstitutionScore: DesignableButton!
    @IBOutlet weak var IntelligenceScore: DesignableButton!
    @IBOutlet weak var WisdomScore: DesignableButton!
    @IBOutlet weak var CharismaScore: DesignableButton!
    
    @IBOutlet weak var StrengthModifier: DesignableButton!
    @IBOutlet weak var DexterityModifier: DesignableButton!
    @IBOutlet weak var ConstitutionModifier: DesignableButton!
    @IBOutlet weak var IntelligenceModifier: DesignableButton!
    @IBOutlet weak var WisdomModifier: DesignableButton!
    @IBOutlet weak var CharismaModifier: DesignableButton!
    
    @IBOutlet weak var RaceView: DesignableButton!
    @IBOutlet weak var ClassView: DesignableButton!
    @IBOutlet weak var NameView: DesignableTextField!
    
    @IBOutlet var SheetOneView: DesignableView!
    @IBOutlet var SheetTwoView: DesignableView!
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ref = Database.database().reference()
        
        StrengthScore.setTitle(defaults.string(forKey: defaultsKeys.keyAbilityOne), for: .normal)
        DexterityScore.setTitle(defaults.string(forKey: defaultsKeys.keyAbilityTwo), for: .normal)
        ConstitutionScore.setTitle(defaults.string(forKey: defaultsKeys.keyAbilityThree), for: .normal)
        IntelligenceScore.setTitle(defaults.string(forKey: defaultsKeys.keyAbilityFour), for: .normal)
        WisdomScore.setTitle(defaults.string(forKey: defaultsKeys.keyAbilityFive), for: .normal)
        CharismaScore.setTitle(defaults.string(forKey: defaultsKeys.keyAbilitySix), for: .normal)
        
        RaceView.setTitle((defaults.string(forKey: defaultsKeys.keyRace)), for: .normal)
        ClassView.setTitle((defaults.string(forKey: defaultsKeys.keyClass)), for: .normal)
        
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipes(_:)))
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipes(_:)))
        
        leftSwipe.direction = .left
        rightSwipe.direction = .right
        
        view.addGestureRecognizer(leftSwipe)
        view.addGestureRecognizer(rightSwipe)
        
        if Int(StrengthScore.currentTitle!) == 20{
            StrengthModifier.setTitle("+5", for: .normal)
        }
        if Int(StrengthScore.currentTitle!) == 19 || Int(StrengthScore.currentTitle!) == 18 {
            StrengthModifier.setTitle("+4", for: .normal)
        }
        if Int(StrengthScore.currentTitle!) == 17 || Int(StrengthScore.currentTitle!) == 16 {
            StrengthModifier.setTitle("+3", for: .normal)
        }
        if Int(StrengthScore.currentTitle!) == 15 || Int(StrengthScore.currentTitle!) == 14 {
            StrengthModifier.setTitle("+2", for: .normal)
        }
        if Int(StrengthScore.currentTitle!) == 13 || Int(StrengthScore.currentTitle!) == 12 {
            StrengthModifier.setTitle("+1", for: .normal)
        }
        if Int(StrengthScore.currentTitle!) == 11 || Int(StrengthScore.currentTitle!) == 10 {
            StrengthModifier.setTitle("+0", for: .normal)
        }
        if Int(StrengthScore.currentTitle!) == 9 || Int(StrengthScore.currentTitle!) == 8 {
            StrengthModifier.setTitle("-1", for: .normal)
        }
        if Int(StrengthScore.currentTitle!) == 7 || Int(StrengthScore.currentTitle!) == 6 {
            StrengthModifier.setTitle("-2", for: .normal)
        }
        
        if Int(DexterityScore.currentTitle!) == 20{
            DexterityModifier.setTitle("+5", for: .normal)
        }
        if Int(DexterityScore.currentTitle!) == 19 || Int(DexterityScore.currentTitle!) == 18 {
            DexterityModifier.setTitle("+4", for: .normal)
        }
        if Int(DexterityScore.currentTitle!) == 17 || Int(DexterityScore.currentTitle!) == 16 {
            DexterityModifier.setTitle("+3", for: .normal)
        }
        if Int(DexterityScore.currentTitle!) == 15 || Int(DexterityScore.currentTitle!) == 14 {
            DexterityModifier.setTitle("+2", for: .normal)
        }
        if Int(DexterityScore.currentTitle!) == 13 || Int(DexterityScore.currentTitle!) == 12 {
            DexterityModifier.setTitle("+1", for: .normal)
        }
        if Int(DexterityScore.currentTitle!) == 11 || Int(DexterityScore.currentTitle!) == 10 {
            StrengthModifier.setTitle("+0", for: .normal)
        }
        if Int(DexterityScore.currentTitle!) == 9 || Int(DexterityScore.currentTitle!) == 8 {
            DexterityModifier.setTitle("-1", for: .normal)
        }
        if Int(DexterityScore.currentTitle!) == 7 || Int(DexterityScore.currentTitle!) == 6 {
            DexterityModifier.setTitle("-2", for: .normal)
        }
        
        if Int(ConstitutionScore.currentTitle!) == 20{
            ConstitutionModifier.setTitle("+5", for: .normal)
        }
        if Int(ConstitutionScore.currentTitle!) == 19 || Int(ConstitutionScore.currentTitle!) == 18 {
            ConstitutionModifier.setTitle("+4", for: .normal)
        }
        if Int(ConstitutionScore.currentTitle!) == 17 || Int(ConstitutionScore.currentTitle!) == 16 {
            ConstitutionModifier.setTitle("+3", for: .normal)
        }
        if Int(ConstitutionScore.currentTitle!) == 15 || Int(ConstitutionScore.currentTitle!) == 14 {
            ConstitutionModifier.setTitle("+2", for: .normal)
        }
        if Int(ConstitutionScore.currentTitle!) == 13 || Int(ConstitutionScore.currentTitle!) == 12 {
            ConstitutionModifier.setTitle("+1", for: .normal)
        }
        if Int(ConstitutionScore.currentTitle!) == 11 || Int(ConstitutionScore.currentTitle!) == 10 {
            ConstitutionModifier.setTitle("+0", for: .normal)
        }
        if Int(ConstitutionScore.currentTitle!) == 9 || Int(ConstitutionScore.currentTitle!) == 8 {
            ConstitutionModifier.setTitle("-1", for: .normal)
        }
        if Int(ConstitutionScore.currentTitle!) == 7 || Int(ConstitutionScore.currentTitle!) == 6 {
            ConstitutionModifier.setTitle("-2", for: .normal)
        }
        
        if Int(IntelligenceScore.currentTitle!) == 20{
            IntelligenceModifier.setTitle("+5", for: .normal)
        }
        if Int(IntelligenceScore.currentTitle!) == 19 || Int(IntelligenceScore.currentTitle!) == 18 {
            IntelligenceModifier.setTitle("+4", for: .normal)
        }
        if Int(IntelligenceScore.currentTitle!) == 17 || Int(IntelligenceScore.currentTitle!) == 16 {
            IntelligenceModifier.setTitle("+3", for: .normal)
        }
        if Int(IntelligenceScore.currentTitle!) == 15 || Int(IntelligenceScore.currentTitle!) == 14 {
            IntelligenceModifier.setTitle("+2", for: .normal)
        }
        if Int(IntelligenceScore.currentTitle!) == 13 || Int(IntelligenceScore.currentTitle!) == 12 {
            IntelligenceModifier.setTitle("+1", for: .normal)
        }
        if Int(IntelligenceScore.currentTitle!) == 11 || Int(IntelligenceScore.currentTitle!) == 10 {
            IntelligenceModifier.setTitle("+0", for: .normal)
        }
        if Int(IntelligenceScore.currentTitle!) == 9 || Int(IntelligenceScore.currentTitle!) == 8 {
            IntelligenceModifier.setTitle("-1", for: .normal)
        }
        if Int(IntelligenceScore.currentTitle!) == 7 || Int(IntelligenceScore.currentTitle!) == 6 {
            IntelligenceModifier.setTitle("-2", for: .normal)
        }
        
        if Int(WisdomScore.currentTitle!) == 20{
            WisdomModifier.setTitle("+5", for: .normal)
        }
        if Int(WisdomScore.currentTitle!) == 19 || Int(WisdomScore.currentTitle!) == 18 {
            WisdomModifier.setTitle("+4", for: .normal)
        }
        if Int(WisdomScore.currentTitle!) == 17 || Int(WisdomScore.currentTitle!) == 16 {
            WisdomModifier.setTitle("+3", for: .normal)
        }
        if Int(WisdomScore.currentTitle!) == 15 || Int(WisdomScore.currentTitle!) == 14 {
            WisdomModifier.setTitle("+2", for: .normal)
        }
        if Int(WisdomScore.currentTitle!) == 13 || Int(WisdomScore.currentTitle!) == 12 {
            WisdomModifier.setTitle("+1", for: .normal)
        }
        if Int(WisdomScore.currentTitle!) == 11 || Int(WisdomScore.currentTitle!) == 10 {
            WisdomModifier.setTitle("+0", for: .normal)
        }
        if Int(WisdomScore.currentTitle!) == 9 || Int(WisdomScore.currentTitle!) == 8 {
            WisdomModifier.setTitle("-1", for: .normal)
        }
        if Int(WisdomScore.currentTitle!) == 7 || Int(WisdomScore.currentTitle!) == 6 {
            WisdomModifier.setTitle("-2", for: .normal)
        }
        
        if Int(CharismaScore.currentTitle!) == 20{
            CharismaModifier.setTitle("+5", for: .normal)
        }
        if Int(CharismaScore.currentTitle!) == 19 || Int(CharismaScore.currentTitle!) == 18 {
            CharismaModifier.setTitle("+4", for: .normal)
        }
        if Int(CharismaScore.currentTitle!) == 17 || Int(CharismaScore.currentTitle!) == 16 {
            CharismaModifier.setTitle("+3", for: .normal)
        }
        if Int(CharismaScore.currentTitle!) == 15 || Int(CharismaScore.currentTitle!) == 14 {
            CharismaModifier.setTitle("+2", for: .normal)
        }
        if Int(CharismaScore.currentTitle!) == 13 || Int(CharismaScore.currentTitle!) == 12 {
            CharismaModifier.setTitle("+1", for: .normal)
        }
        if Int(CharismaScore.currentTitle!) == 11 || Int(CharismaScore.currentTitle!) == 10 {
            CharismaModifier.setTitle("+0", for: .normal)
        }
        if Int(CharismaScore.currentTitle!) == 9 || Int(CharismaScore.currentTitle!) == 8 {
            CharismaModifier.setTitle("-1", for: .normal)
        }
        if Int(CharismaScore.currentTitle!) == 7 || Int(CharismaScore.currentTitle!) == 6 {
            CharismaModifier.setTitle("-2", for: .normal)
        }
    }
    
    @objc func handleSwipes(_ sender:UISwipeGestureRecognizer) {
        
        if (sender.direction == .left) {
            self.view.addSubview(SheetTwoView)
            SheetTwoView.center = self.view.center
        }
        
        if (sender.direction == .right) {
            self.SheetTwoView.removeFromSuperview()
        }
    }
    
    @IBAction func SaveAndExitButtonTapped(_ sender: Any) {
        self.ref.child("Character/Name").setValue(NameView.text)
        self.ref.child("Character/Race").setValue(RaceView.currentTitle)
        self.ref.child("Character/Class").setValue(ClassView.currentTitle)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "mainStoryboard") as UIViewController
        present(vc, animated: true, completion: nil)
    }
}
