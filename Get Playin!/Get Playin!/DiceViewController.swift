//
//  DiceViewController.swift
//  Get Playin!
//
//  Created by scott shelton on 6/23/19.
//  Copyright © 2019 scott shelton. All rights reserved.
//

import UIKit

struct defaultsKeys {
    static let keyScoreOne = "keyScoreOne"
    static let keyScoreTwo = "keyScoreTwo"
    static let keyScoreThree = "keyScoreThree"
    static let keyScoreFour = "keyScoreFour"
    static let keyScoreFive = "keyScoreFive"
    static let keyScoreSix = "keyScoreSix"
    static let keyAbilityOne = "keyAbilityOne"
    static let keyAbilityTwo = "keyAbilityTwo"
    static let keyAbilityThree = "keyAbilityThree"
    static let keyAbilityFour = "keyAbilityFour"
    static let keyAbilityFive = "keyAbilityFive"
    static let keyAbilitySix = "keyAbilitySix"
    static let keyRace = "keyRace"
    static let keyClass = "keyClass"
}

class DiceViewController: UIViewController {
    
    // outlets for interfacing with Dice.storyboard
    @IBOutlet weak var RollButton: DesignableButton!
    @IBOutlet weak var DiceImageOne: UIButton!
    @IBOutlet weak var DiceImageTwo: UIButton!
    @IBOutlet weak var DiceImageThree: UIButton!
    @IBOutlet weak var DiceImageFour: UIButton!
    @IBOutlet weak var DiceImageFive: UIButton!
    @IBOutlet weak var DiceImageSix: UIButton!
    
    var diceOne = 0
    var diceTwo = 0
    var diceThree = 0
    var diceFour = 0
    var diceFive = 0
    var diceSix = 0
    var roll = 1
    var abilityScoreOne = 0
    var abilityScoreTwo = 0
    var abilityScoreThree = 0
    var abilityScoreFour = 0
    var abilityScoreFive = 0
    var abilityScoreSix = 0
    var abilityScores = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        RollButton.setTitle("Tap for \(roll)st roll!", for: .normal)
    }
    
    @IBAction func RollButtonPressed(_ sender: Any) {
        RollButton.isUserInteractionEnabled = false
        rollDice()
        changeImages()
        abilityScores += [diceOne, diceTwo, diceThree, diceFour, diceFive, diceSix]
        switch roll {
        case 1:
            var first = 0
            var second = 0
            var third = 0
            for i in 0...5 {
                if abilityScores[i] > first {
                    third = second
                    second = first
                    first = abilityScores[i]
                }
                else if (abilityScores[i] > second) {
                    third = second
                    second = abilityScores[i]
                }
                else if (abilityScores[i] > third) {
                    third = abilityScores[i]
                }
            }
            //print("Roll \(roll) first = \(first)")
            //print("Roll \(roll) second = \(second)")
            //print("Roll \(roll) third = \(third)")
            abilityScoreOne += first + second + third
            //print("Roll \(roll) abilityScoreOne = \(abilityScoreOne)")
            abilityScores.removeAll()
            roll += 1
            RollButton.setTitle("Tap for \(roll)nd Roll!", for: .normal)
            RollButton.isUserInteractionEnabled = true
        case 2:
            var first = 0
            var second = 0
            var third = 0
            for i in 0...5 {
                if abilityScores[i] > first {
                    third = second
                    second = first
                    first = abilityScores[i]
                }
                else if (abilityScores[i] > second) {
                    third = second
                    second = abilityScores[i]
                }
                else if (abilityScores[i] > third) {
                    third = abilityScores[i]
                }
            }
            //print("Roll \(roll) first = \(first)")
            //print("Roll \(roll) second = \(second)")
            //print("Roll \(roll) third = \(third)")
            abilityScoreTwo += first + second + third
            //print("Roll \(roll) abilityScoreTwo = \(abilityScoreTwo)")
            abilityScores.removeAll()
            roll += 1
            RollButton.setTitle("Tap for \(roll)rd Roll!", for: .normal)
            RollButton.isUserInteractionEnabled = true
        case 3:
            var first = 0
            var second = 0
            var third = 0
            for i in 0...5 {
                if abilityScores[i] > first {
                    third = second
                    second = first
                    first = abilityScores[i]
                }
                else if (abilityScores[i] > second) {
                    third = second
                    second = abilityScores[i]
                }
                else if (abilityScores[i] > third) {
                    third = abilityScores[i]
                }
            }
            //print("Roll \(roll) first = \(first)")
            //print("Roll \(roll) second = \(second)")
            //print("Roll \(roll) third = \(third)")
            abilityScoreThree += first + second + third
            //print("Roll \(roll) abilityScoreTwo = \(abilityScoreThree)")
            abilityScores.removeAll()
            roll += 1
            RollButton.setTitle("Tap for \(roll)th Roll!", for: .normal)
            RollButton.isUserInteractionEnabled = true
        case 4:
            var first = 0
            var second = 0
            var third = 0
            for i in 0...5 {
                if abilityScores[i] > first {
                    third = second
                    second = first
                    first = abilityScores[i]
                }
                else if (abilityScores[i] > second) {
                    third = second
                    second = abilityScores[i]
                }
                else if (abilityScores[i] > third) {
                    third = abilityScores[i]
                }
            }
            //print("Roll \(roll) first = \(first)")
            //print("Roll \(roll) second = \(second)")
            //print("Roll \(roll) third = \(third)")
            abilityScoreFour += first + second + third
            //print("Roll \(roll) abilityScoreFour = \(abilityScoreFour)")
            abilityScores.removeAll()
            roll += 1
            RollButton.setTitle("Tap for \(roll)th Roll!", for: .normal)
            RollButton.isUserInteractionEnabled = true
        case 5:
            var first = 0
            var second = 0
            var third = 0
            for i in 0...5 {
                if abilityScores[i] > first {
                    third = second
                    second = first
                    first = abilityScores[i]
                }
                else if (abilityScores[i] > second) {
                    third = second
                    second = abilityScores[i]
                }
                else if (abilityScores[i] > third) {
                    third = abilityScores[i]
                }
            }
            //print("Roll \(roll) first = \(first)")
            //print("Roll \(roll) second = \(second)")
            //print("Roll \(roll) third = \(third)")
            abilityScoreFive += first + second + third
            //print("Roll \(roll) abilityScoreFive = \(abilityScoreTwo)")
            abilityScores.removeAll()
            roll += 1
            RollButton.setTitle("Tap for \(roll)th Roll!", for: .normal)
            RollButton.isUserInteractionEnabled = true
        case 6:
            var first = 0
            var second = 0
            var third = 0
            for i in 0...5 {
                if abilityScores[i] > first {
                    third = second
                    second = first
                    first = abilityScores[i]
                }
                else if (abilityScores[i] > second) {
                    third = second
                    second = abilityScores[i]
                }
                else if (abilityScores[i] > third) {
                    third = abilityScores[i]
                }
            }
            //print("Roll \(roll) first = \(first)")
            //print("Roll \(roll) second = \(second)")
            //print("Roll \(roll) third = \(third)")
            abilityScoreSix += first + second + third
            //print("Roll \(roll) abilityScoreSix = \(abilityScoreSix)")
            abilityScores.removeAll()
            let defaults = UserDefaults.standard
            defaults.set(abilityScoreOne, forKey: defaultsKeys.keyScoreOne)
            defaults.set(abilityScoreTwo, forKey: defaultsKeys.keyScoreTwo)
            defaults.set(abilityScoreThree, forKey: defaultsKeys.keyScoreThree)
            defaults.set(abilityScoreFour, forKey: defaultsKeys.keyScoreFour)
            defaults.set(abilityScoreFive, forKey: defaultsKeys.keyScoreFive)
            defaults.set(abilityScoreSix, forKey: defaultsKeys.keyScoreSix)
            let storyboard = UIStoryboard(name: "AbilityScores", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "abilityScoresStoryboard") as UIViewController
            present(vc, animated: true, completion: nil)
        default:
            break
        }
    }
    
    func rollDice() {
        diceOne = Int(arc4random_uniform(6) + 1)
        diceTwo = Int(arc4random_uniform(6) + 1)
        diceThree = Int(arc4random_uniform(6) + 1)
        diceFour = Int(arc4random_uniform(6) + 1)
        diceFive = Int(arc4random_uniform(6) + 1)
        diceSix = Int(arc4random_uniform(6) + 1)
    }
    
    func changeImages() {
        DiceImageOne.setImage(UIImage(named: "side_\(diceOne)"), for: .normal)
        DiceImageTwo.setImage(UIImage(named: "side_\(diceTwo)"), for: .normal)
        DiceImageThree.setImage(UIImage(named: "side_\(diceThree)"), for: .normal)
        DiceImageFour.setImage(UIImage(named: "side_\(diceFour)"), for: .normal)
        DiceImageFive.setImage(UIImage(named: "side_\(diceFive)"), for: .normal)
        DiceImageSix.setImage(UIImage(named: "side_\(diceSix)"), for: .normal)
    }
    
}
