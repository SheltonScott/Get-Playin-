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
    
    
    
    @IBOutlet var CoverView: UIView!
    @IBOutlet var PopoverView: DesignableView!
    @IBOutlet weak var ScoreTwo: DesignableButton!
    @IBOutlet weak var ScoreOne: DesignableButton!
    @IBOutlet weak var ScoreThree: DesignableButton!
    @IBOutlet weak var ScoreFour: DesignableButton!
    @IBOutlet weak var ScoreFive: DesignableButton!
    @IBOutlet weak var ScoreSix: DesignableButton!
    
    
    @IBOutlet weak var SaveAbilityScoresButton: DesignableButton!
    
    var abilityScoreOne = 0
    var abilityScoreTwo = 0
    var abilityScoreThree = 0
    var abilityScoreFour = 0
    var abilityScoreFive = 0
    var abilityScoreSix = 0
    
    let defaults = UserDefaults.standard
    var abilityScores = [Int]()
    var buttonTapped = 0
    var scoresComplete = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        abilityScoreOne = defaults.integer(forKey: defaultsKeys.keyScoreOne)
        abilityScoreTwo = defaults.integer(forKey: defaultsKeys.keyScoreTwo)
        abilityScoreThree = defaults.integer(forKey: defaultsKeys.keyScoreThree)
        abilityScoreFour = defaults.integer(forKey: defaultsKeys.keyScoreFour)
        abilityScoreFive = defaults.integer(forKey: defaultsKeys.keyScoreFive)
        abilityScoreSix = defaults.integer(forKey: defaultsKeys.keyScoreSix)
        
        abilityScores += [abilityScoreOne, abilityScoreTwo, abilityScoreThree, abilityScoreFour, abilityScoreFive, abilityScoreSix]
        
        ScoreOne.setTitle("\(abilityScoreOne)", for: .normal)
        ScoreTwo.setTitle("\(abilityScoreTwo)", for: .normal)
        ScoreThree.setTitle("\(abilityScoreThree)", for: .normal)
        ScoreFour.setTitle("\(abilityScoreFour)", for: .normal)
        ScoreFive.setTitle("\(abilityScoreFive)", for: .normal)
        ScoreSix.setTitle("\(abilityScoreSix)", for: .normal)
        
        SaveAbilityScoresButton.isUserInteractionEnabled = false
    }
    
    @IBAction func StrengthScoreTapped(_ sender: Any) {
        buttonTapped = 1
        MainView.alpha = 0.5
        self.view.addSubview(CoverView)
        CoverView.center = self.view.center
        self.view.addSubview(PopoverView)
        PopoverView.center = self.view.center
    }
    @IBAction func DexterityScoreTapped(_ sender: Any) {
        buttonTapped = 2
        MainView.alpha = 0.5
        self.view.addSubview(CoverView)
        CoverView.center = self.view.center
        self.view.addSubview(PopoverView)
        PopoverView.center = self.view.center
    }
    @IBAction func ConstitutionScoreTapped(_ sender: Any) {
        buttonTapped = 3
        MainView.alpha = 0.5
        self.view.addSubview(CoverView)
        CoverView.center = self.view.center
        self.view.addSubview(PopoverView)
        PopoverView.center = self.view.center
    }
    @IBAction func IntelligenceScoreTapped(_ sender: Any) {
        buttonTapped = 4
        MainView.alpha = 0.5
        self.view.addSubview(CoverView)
        CoverView.center = self.view.center
        self.view.addSubview(PopoverView)
        PopoverView.center = self.view.center
    }
    @IBAction func WisdomScoreTapped(_ sender: Any) {
        buttonTapped = 5
        MainView.alpha = 0.5
        self.view.addSubview(CoverView)
        CoverView.center = self.view.center
        self.view.addSubview(PopoverView)
        PopoverView.center = self.view.center
    }
    @IBAction func CharismaScoreTapped(_ sender: Any) {
        buttonTapped = 6
        MainView.alpha = 0.5
        self.view.addSubview(CoverView)
        CoverView.center = self.view.center
        self.view.addSubview(PopoverView)
        PopoverView.center = self.view.center
    }
    
    @IBAction func ScoreOneTapped(_ sender: Any) {
        ScoreOne.setTitle("Used!", for: .normal)
        ScoreOne.isUserInteractionEnabled = false
        scoresComplete += 1
        if scoresComplete == 6 {
            SaveAbilityScoresButton.isUserInteractionEnabled = true
        }
        //print(scoresComplete)
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
        self.CoverView.removeFromSuperview()
    }
    @IBAction func ScoreTwoTapped(_ sender: Any) {
        ScoreTwo.setTitle("Used!", for: .normal)
        ScoreTwo.isUserInteractionEnabled = false
        scoresComplete += 1
        if scoresComplete == 6 {
            SaveAbilityScoresButton.isUserInteractionEnabled = true
        }
        //print(scoresComplete)
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
        self.CoverView.removeFromSuperview()
    }
    @IBAction func ScoreThreeTapped(_ sender: Any) {
        ScoreThree.setTitle("Used!", for: .normal)
        ScoreThree.isUserInteractionEnabled = false
        scoresComplete += 1
        if scoresComplete == 6 {
            SaveAbilityScoresButton.isUserInteractionEnabled = true
        }
        //print(scoresComplete)
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
        self.CoverView.removeFromSuperview()
    }
    @IBAction func ScoreFourTapped(_ sender: Any) {
        ScoreFour.setTitle("Used!", for: .normal)
        ScoreFour.isUserInteractionEnabled = false
        scoresComplete += 1
        if scoresComplete == 6 {
            SaveAbilityScoresButton.isUserInteractionEnabled = true
        }
        //print(scoresComplete)
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
        self.CoverView.removeFromSuperview()
    }
    @IBAction func ScoreFiveTapped(_ sender: Any) {
        ScoreFive.setTitle("Used!", for: .normal)
        ScoreFive.isUserInteractionEnabled = false
        scoresComplete += 1
        if scoresComplete == 6 {
            SaveAbilityScoresButton.isUserInteractionEnabled = true
        }
        //print(scoresComplete)
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
        self.CoverView.removeFromSuperview()
    }
    @IBAction func ScoreSixTapped(_ sender: Any) {
        ScoreSix.setTitle("Used!", for: .normal)
        ScoreSix.isUserInteractionEnabled = false
        scoresComplete += 1
        if scoresComplete == 6 {
            SaveAbilityScoresButton.isUserInteractionEnabled = true
        }
        //print(scoresComplete)
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
        self.CoverView.removeFromSuperview()
    }
    
    @IBAction func CancelButtonTapped(_ sender: Any) {
        MainView.alpha = 1
        self.PopoverView.removeFromSuperview()
        self.CoverView.removeFromSuperview()
    }
    
    @IBAction func SaveAbilityScoresButtonTapped(_ sender: Any) {
        defaults.set(StrengthScore.currentTitle, forKey: defaultsKeys.keyAbilityOne)
        defaults.set(DexterityScore.currentTitle, forKey: defaultsKeys.keyAbilityTwo)
        defaults.set(ConstitutionScore.currentTitle, forKey: defaultsKeys.keyAbilityThree)
        defaults.set(IntelligenceScore.currentTitle, forKey: defaultsKeys.keyAbilityFour)
        defaults.set(WisdomScore.currentTitle, forKey: defaultsKeys.keyAbilityFive)
        defaults.set(CharismaScore.currentTitle, forKey: defaultsKeys.keyAbilitySix)
        let storyboard = UIStoryboard(name: "Race-Class", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "raceClassStoryboard") as UIViewController
        present(vc, animated: true, completion: nil)
    }
    
}
