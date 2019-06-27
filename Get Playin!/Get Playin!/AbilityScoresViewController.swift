//
//  AbilityScoresViewController.swift
//  Get Playin!
//
//  Created by scott shelton on 6/23/19.
//  Copyright © 2019 scott shelton. All rights reserved.
//

import UIKit

class AbilityScoresViewController: UIViewController {
    
    @IBOutlet weak var MainView: DesignableView!
    @IBOutlet weak var StrengthScore: DesignableButton!
    @IBOutlet weak var DexterityScore: DesignableButton!
    @IBOutlet weak var ConstitutionScore: DesignableButton!
    @IBOutlet weak var IntelligenceScore: DesignableButton!
    @IBOutlet weak var WisdomScore: DesignableButton!
    @IBOutlet weak var CharismaScore: DesignableButton!
    
    @IBOutlet var PopoverView: DesignableView!
    @IBOutlet weak var ScoreTwo: DesignableButton!
    @IBOutlet weak var ScoreOne: DesignableButton!
    @IBOutlet weak var ScoreThree: DesignableButton!
    @IBOutlet weak var ScoreFour: DesignableButton!
    @IBOutlet weak var ScoreFive: DesignableButton!
    @IBOutlet weak var ScoreSix: DesignableButton!
    
    var abilityScoreOne = 0
    var abilityScoreTwo = 0
    var abilityScoreThree = 0
    var abilityScoreFour = 0
    var abilityScoreFive = 0
    var abilityScoreSix = 0
    
    let defaults = UserDefaults.standard
    var abilityScores = [Int]()
    var buttonTapped = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        abilityScoreOne = defaults.integer(forKey: defaultsKeys.keyOne)
        abilityScoreTwo = defaults.integer(forKey: defaultsKeys.keyTwo)
        abilityScoreThree = defaults.integer(forKey: defaultsKeys.keyThree)
        abilityScoreFour = defaults.integer(forKey: defaultsKeys.keyFour)
        abilityScoreFive = defaults.integer(forKey: defaultsKeys.keyFive)
        abilityScoreSix = defaults.integer(forKey: defaultsKeys.keySix)
        
        abilityScores += [abilityScoreOne, abilityScoreTwo, abilityScoreThree, abilityScoreFour, abilityScoreFive, abilityScoreSix]
        
        ScoreOne.setTitle("\(abilityScoreOne)", for: .normal)
        ScoreTwo.setTitle("\(abilityScoreTwo)", for: .normal)
        ScoreThree.setTitle("\(abilityScoreThree)", for: .normal)
        ScoreFour.setTitle("\(abilityScoreFour)", for: .normal)
        ScoreFive.setTitle("\(abilityScoreFive)", for: .normal)
        ScoreSix.setTitle("\(abilityScoreSix)", for: .normal)
        
    }
    
    @IBAction func StrengthScoreTapped(_ sender: Any) {
        buttonTapped = 1
        MainView.alpha = 0.5
        self.view.addSubview(PopoverView)
        PopoverView.center = self.view.center
    }
    @IBAction func DexterityScoreTapped(_ sender: Any) {
        buttonTapped = 2
        MainView.alpha = 0.5
        self.view.addSubview(PopoverView)
        PopoverView.center = self.view.center
    }
    @IBAction func ConstitutionScoreTapped(_ sender: Any) {
        buttonTapped = 3
        MainView.alpha = 0.5
        self.view.addSubview(PopoverView)
        PopoverView.center = self.view.center
    }
    @IBAction func IntelligenceScoreTapped(_ sender: Any) {
        buttonTapped = 4
        MainView.alpha = 0.5
        self.view.addSubview(PopoverView)
        PopoverView.center = self.view.center
    }
    @IBAction func WisdomScoreTapped(_ sender: Any) {
        buttonTapped = 5
        MainView.alpha = 0.5
        self.view.addSubview(PopoverView)
        PopoverView.center = self.view.center
    }
    @IBAction func CharismaScoreTapped(_ sender: Any) {
        buttonTapped = 6
        MainView.alpha = 0.5
        self.view.addSubview(PopoverView)
        PopoverView.center = self.view.center
    }
    
    @IBAction func ScoreOneTapped(_ sender: Any) {
        ScoreOne.setTitle("Used!", for: .normal)
        ScoreOne.isUserInteractionEnabled = false
        switch buttonTapped {
        case 1:
            StrengthScore.setTitle("\(abilityScoreOne)", for: .normal)
            StrengthScore.isUserInteractionEnabled = false
        case 2:
            DexterityScore.setTitle("\(abilityScoreOne)", for: .normal)
            DexterityScore.isUserInteractionEnabled = false
        case 3:
            ConstitutionScore.setTitle("\(abilityScoreOne)", for: .normal)
            ConstitutionScore.isUserInteractionEnabled = false
        case 4:
            IntelligenceScore.setTitle("\(abilityScoreOne)", for: .normal)
            IntelligenceScore.isUserInteractionEnabled = false
        case 5:
            WisdomScore.setTitle("\(abilityScoreOne)", for: .normal)
            WisdomScore.isUserInteractionEnabled = false
        case 6:
            CharismaScore.setTitle("\(abilityScoreOne)", for: .normal)
            CharismaScore.isUserInteractionEnabled = false
        default:
            break
        }
        MainView.alpha = 1
        self.PopoverView.removeFromSuperview()
    }
    @IBAction func ScoreTwoTapped(_ sender: Any) {
        ScoreTwo.setTitle("Used!", for: .normal)
        ScoreTwo.isUserInteractionEnabled = false
        switch buttonTapped {
        case 1:
            StrengthScore.setTitle("\(abilityScoreTwo)", for: .normal)
            StrengthScore.isUserInteractionEnabled = false
        case 2:
            DexterityScore.setTitle("\(abilityScoreTwo)", for: .normal)
            DexterityScore.isUserInteractionEnabled = false
        case 3:
            ConstitutionScore.setTitle("\(abilityScoreTwo)", for: .normal)
            ConstitutionScore.isUserInteractionEnabled = false
        case 4:
            IntelligenceScore.setTitle("\(abilityScoreTwo)", for: .normal)
            IntelligenceScore.isUserInteractionEnabled = false
        case 5:
            WisdomScore.setTitle("\(abilityScoreTwo)", for: .normal)
            WisdomScore.isUserInteractionEnabled = false
        case 6:
            CharismaScore.setTitle("\(abilityScoreTwo)", for: .normal)
            CharismaScore.isUserInteractionEnabled = false
        default:
            break
        }
        MainView.alpha = 1
        self.PopoverView.removeFromSuperview()
    }
    @IBAction func ScoreThreeTapped(_ sender: Any) {
        ScoreThree.setTitle("Used!", for: .normal)
        ScoreThree.isUserInteractionEnabled = false
        switch buttonTapped {
        case 1:
            StrengthScore.setTitle("\(abilityScoreThree)", for: .normal)
            StrengthScore.isUserInteractionEnabled = false
        case 2:
            DexterityScore.setTitle("\(abilityScoreThree)", for: .normal)
            DexterityScore.isUserInteractionEnabled = false
        case 3:
            ConstitutionScore.setTitle("\(abilityScoreThree)", for: .normal)
            ConstitutionScore.isUserInteractionEnabled = false
        case 4:
            IntelligenceScore.setTitle("\(abilityScoreThree)", for: .normal)
            IntelligenceScore.isUserInteractionEnabled = false
        case 5:
            WisdomScore.setTitle("\(abilityScoreThree)", for: .normal)
            WisdomScore.isUserInteractionEnabled = false
        case 6:
            CharismaScore.setTitle("\(abilityScoreThree)", for: .normal)
            CharismaScore.isUserInteractionEnabled = false
        default:
            break
        }
        MainView.alpha = 1
        self.PopoverView.removeFromSuperview()
    }
    @IBAction func ScoreFourTapped(_ sender: Any) {
        ScoreFour.setTitle("Used!", for: .normal)
        ScoreFour.isUserInteractionEnabled = false
        switch buttonTapped {
        case 1:
            StrengthScore.setTitle("\(abilityScoreFour)", for: .normal)
            StrengthScore.isUserInteractionEnabled = false
        case 2:
            DexterityScore.setTitle("\(abilityScoreFour)", for: .normal)
            DexterityScore.isUserInteractionEnabled = false
        case 3:
            ConstitutionScore.setTitle("\(abilityScoreFour)", for: .normal)
            ConstitutionScore.isUserInteractionEnabled = false
        case 4:
            IntelligenceScore.setTitle("\(abilityScoreFour)", for: .normal)
            IntelligenceScore.isUserInteractionEnabled = false
        case 5:
            WisdomScore.setTitle("\(abilityScoreFour)", for: .normal)
            WisdomScore.isUserInteractionEnabled = false
        case 6:
            CharismaScore.setTitle("\(abilityScoreFour)", for: .normal)
            CharismaScore.isUserInteractionEnabled = false
        default:
            break
        }
        MainView.alpha = 1
        self.PopoverView.removeFromSuperview()
    }
    @IBAction func ScoreFiveTapped(_ sender: Any) {
        ScoreFive.setTitle("Used!", for: .normal)
        ScoreFive.isUserInteractionEnabled = false
        switch buttonTapped {
        case 1:
            StrengthScore.setTitle("\(abilityScoreFive)", for: .normal)
            StrengthScore.isUserInteractionEnabled = false
        case 2:
            DexterityScore.setTitle("\(abilityScoreFive)", for: .normal)
            DexterityScore.isUserInteractionEnabled = false
        case 3:
            ConstitutionScore.setTitle("\(abilityScoreFive)", for: .normal)
            ConstitutionScore.isUserInteractionEnabled = false
        case 4:
            IntelligenceScore.setTitle("\(abilityScoreFive)", for: .normal)
            IntelligenceScore.isUserInteractionEnabled = false
        case 5:
            WisdomScore.setTitle("\(abilityScoreFive)", for: .normal)
            WisdomScore.isUserInteractionEnabled = false
        case 6:
            CharismaScore.setTitle("\(abilityScoreFive)", for: .normal)
            CharismaScore.isUserInteractionEnabled = false
        default:
            break
        }
        MainView.alpha = 1
        self.PopoverView.removeFromSuperview()
    }
    @IBAction func ScoreSixTapped(_ sender: Any) {
        ScoreSix.setTitle("Used!", for: .normal)
        ScoreSix.isUserInteractionEnabled = false
        switch buttonTapped {
        case 1:
            StrengthScore.setTitle("\(abilityScoreSix)", for: .normal)
            StrengthScore.isUserInteractionEnabled = false
        case 2:
            DexterityScore.setTitle("\(abilityScoreSix)", for: .normal)
            DexterityScore.isUserInteractionEnabled = false
        case 3:
            ConstitutionScore.setTitle("\(abilityScoreSix)", for: .normal)
            ConstitutionScore.isUserInteractionEnabled = false
        case 4:
            IntelligenceScore.setTitle("\(abilityScoreSix)", for: .normal)
            IntelligenceScore.isUserInteractionEnabled = false
        case 5:
            WisdomScore.setTitle("\(abilityScoreSix)", for: .normal)
            WisdomScore.isUserInteractionEnabled = false
        case 6:
            CharismaScore.setTitle("\(abilityScoreSix)", for: .normal)
            CharismaScore.isUserInteractionEnabled = false
        default:
            break
        }
        MainView.alpha = 1
        self.PopoverView.removeFromSuperview()
    }
    
    @IBAction func SaveAbilityScoresButtonTapped(_ sender: Any) {
    }
    
}
