//
//  Race-ClassViewController.swift
//  Get Playin!
//
//  Created by scott shelton on 6/28/19.
//  Copyright © 2019 scott shelton. All rights reserved.
//

import UIKit

class RaceClassViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var RacePicker: UIPickerView!
    @IBOutlet weak var ClassPicker: UIPickerView!
    
    let defaults = UserDefaults.standard
    
    let races = ["Human", "Elf", "Dwarf", "Halfling", "Half-Orc", "Tiefling", "Half-Elf", "Gnome", "Dragonborn"]
    let classes = ["Barbarian", "Bard", "Cleric", "Druid", "Fighter", "Monk", "Paladin", "Ranger", "Rogue", "Sorcerer", "Warlock", "Wizard"]
    
    var characterRace = ""
    var characterClass = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 1 {
            return races.count
        }
        else {
            return classes.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 1 {
            return races[row]
        }
        else {
            return classes[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView.tag == 1 {
            characterRace = races[row]
        }
        else {
            characterClass = classes[row]
        }
    }
    
    @IBAction func SaveRaceAndClassButtonTapped(_ sender: Any) {
        defaults.set(characterRace, forKey: defaultsKeys.keyRace)
        defaults.set(characterClass, forKey: defaultsKeys.keyClass)
        let storyboard = UIStoryboard(name: "CharacterSheet", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "characterSheetStoryboard") as UIViewController
        present(vc, animated: true, completion: nil)
    }
    
}
