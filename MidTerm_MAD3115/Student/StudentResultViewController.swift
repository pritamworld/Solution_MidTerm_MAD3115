//
//  StudentResultViewController.swift
//  MidTerm_MADF2017
//
//  Created by moxDroid on 2017-10-20.
//  Copyright © 2017 moxDroid. All rights reserved.
//  Student ID :
//  Student Name :

import UIKit

class StudentResultViewController: UIViewController {
    
    @IBOutlet weak var lblStudentId: UILabel!
    @IBOutlet weak var lblStudentName: UILabel!
    @IBOutlet weak var lblStudentEmailId: UILabel!
    @IBOutlet weak var lblBirthDate: UILabel!
    @IBOutlet weak var lblSubject1: UILabel!
    @IBOutlet weak var lblSubject2: UILabel!
    @IBOutlet weak var lblSubject3: UILabel!
    @IBOutlet weak var lblSubject4: UILabel!
    @IBOutlet weak var lblSubject5: UILabel!
    @IBOutlet weak var lblTotal: UILabel!
    @IBOutlet weak var lblPercentage: UILabel!
    @IBOutlet weak var lblResult: UILabel!
    
    var objStudent:Student!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fillStudentData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func fillStudentData(){
        self.lblStudentId.text = self.objStudent.studentId
        self.lblStudentName.text = self.objStudent.studentName
        self.lblStudentEmailId.text = self.objStudent.studentEmailId
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MMMM-yyyy"
        dateFormatter.timeZone = TimeZone(abbreviation: "GMT+0:00")
        self.lblBirthDate.text = dateFormatter.string(for:self.objStudent.birthDate)

        self.lblSubject1.text = String(self.objStudent.marks[0])
        self.lblSubject2.text = String(self.objStudent.marks[1])
        self.lblSubject3.text = String(self.objStudent.marks[2])
        self.lblSubject4.text = String(self.objStudent.marks[3])
        self.lblSubject5.text = String(self.objStudent.marks[4])
        
        //Result Calculation
        self.objStudent.confirmPassingCriteria()
        
        self.lblTotal.text = String(self.objStudent.total)
        self.lblPercentage.text = String(self.objStudent.per) + "%"
        if self.objStudent.result == "FAIL"{
        self.lblResult.textColor = UIColor.red
        }else{
            self.lblResult.textColor = UIColor.green
        }
        self.lblResult.text = self.objStudent.result
            
        
    }
}
