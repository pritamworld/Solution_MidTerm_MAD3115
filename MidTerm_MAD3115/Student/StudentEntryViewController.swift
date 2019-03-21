//
//  StudentEntryViewController.swift
//  MidTerm_MADF2017
//
//  Created by moxDroid on 2017-10-20.
//  Copyright © 2017 moxDroid. All rights reserved.
//  Student ID :
//  Student Name :

import UIKit

class StudentEntryViewController: UIViewController {

    @IBOutlet weak var txtStudentId: UITextField!
    @IBOutlet weak var txtStudentName: UITextField!
    @IBOutlet weak var txtStudentEmailId: UITextField!
    @IBOutlet weak var txtBirthDate: UITextField!
    @IBOutlet weak var txtSubject1: UITextField!
    @IBOutlet weak var txtSubject2: UITextField!
    @IBOutlet weak var txtSubject3: UITextField!
    @IBOutlet weak var txtSubject4: UITextField!
    @IBOutlet weak var txtSubject5: UITextField!
    private var stud: Student!
    override func viewDidLoad() {
        super.viewDidLoad()

        stud = Student()
    }

    @IBAction func btnCalculateClick(_ sender: UIBarButtonItem) {
        
        setStudentDate()
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let resultViewController = storyBoard.instantiateViewController(withIdentifier: "resultScreen") as! StudentResultViewController
        //Set Student Object to Pass
        resultViewController.objStudent = self.stud
        self.present(resultViewController, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setStudentDate()  {
        self.stud.studentId = txtStudentId.text!
        self.stud.studentName = txtStudentName.text!
        self.stud.studentEmailId = txtStudentEmailId.text!
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-mm-yyyy"
        dateFormatter.timeZone = TimeZone(abbreviation: "GMT+0:00")
        self.stud.birthDate = dateFormatter.date(from:txtBirthDate.text!)
        
        self.stud.marks[0] = Double(txtSubject1.text!)!
        self.stud.marks[1] = Double(txtSubject2.text!)!
        self.stud.marks[2] = Double(txtSubject3.text!)!
        self.stud.marks[3] = Double(txtSubject4.text!)!
        self.stud.marks[4] = Double(txtSubject5.text!)!
    }

}
