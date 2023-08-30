//
//  ViewController.swift
//  IntroduceStudentJPerez
//
//  Created by JE on 8/29/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstnametext: UITextField!
    @IBOutlet weak var lastnametext: UITextField!
    @IBOutlet weak var schooltext: UITextField!
    
    @IBOutlet weak var morepetsswitch: UISwitch!
    @IBOutlet weak var petsstepper: UIStepper!
    @IBOutlet weak var numberofpets: UILabel!
    @IBOutlet weak var segmentedcontrol: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func stepperDidChange(_ sender: UIStepper) {
          
          numberofpets.text = "\(Int(sender.value))"
      }
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        let year = segmentedcontrol.titleForSegment(at: segmentedcontrol.selectedSegmentIndex)
        
        let introduction = "My name is \(firstnametext.text!) \(lastnametext.text!) and I attend \(schooltext.text!). I am in my \(year!) year and i own \(numberofpets.text!) dogs. It is \(morepetsswitch.isOn) that I want more pets."
        
        print(introduction)
        
        
    }
    
    @IBAction func introduceself(_sender: UIButton){
        let year = segmentedcontrol.titleForSegment(at: segmentedcontrol.selectedSegmentIndex)
        
        let introduction = "My name is \(firstnametext.text!) \(lastnametext.text!) and I attend \(schooltext.text!). I am in my \(year!) year and i own \(numberofpets.text!) dogs. It is \(morepetsswitch.isOn) that I want more pets."
        
        let alertcontroller = UIAlertController(title:"My introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        alertcontroller.addAction(action)
        
        present(alertcontroller,animated:true,completion: nil)
        
        
    }

}

