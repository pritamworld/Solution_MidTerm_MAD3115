//
//  Student.swift
//  MidTerm_MADF2017
//
//  Created by moxDroid on 2017-10-20.
//  Copyright © 2017 moxDroid. All rights reserved.
//  Student ID :
//  Student Name :

import Foundation
class Student{
    var studentId: String!
    var studentName: String!
    var studentEmailId: String!
    var birthDate: Date!
    var marks:[Double]
    var total: Double!
    var per: Double!
    var result: String!
    
    init(){
        self.studentId = String()
        self.studentName = String()
        self.studentEmailId = String()
        self.birthDate = Date()
        self.marks = Array(repeating: 0.0, count: 5)
        self.total = 0.0
        self.per = 0.0
        self.result = String()
    }
    
    private func calculateTotal(){
        self.total = 0.0
        for m in self.marks{
            self.total = self.total + m
        }
    }
    
    func confirmPassingCriteria(){
        var count = 0
        for m in self.marks{
            if m < 45{
                count = count + 1
            }
        }
        
        if count >= 2 {
            self.total = 0.0
            self.per = 0.0
            self.result = "FAIL"
        }
        else{
            self.calculateTotal()
            self.calcualtePercentage()
            self.calculateResult()
        }
    }
    
   private func calcualtePercentage(){
        self.per = self.total / 500 * 100
    }
    
   private func calculateResult()
   {
        
    if self.per >= 95
    {
        self.result = "A+"
    }
    else if self.per >= 85
    {
        self.result = "A"
    }
    else if self.per >= 75
    {
        self.result = "B+"
    }
    else if self.per >= 65
    {
        self.result = "B"
    }
    else if self.per >= 55
    {
        self.result = "C+"
    }
    else if self.per >= 50
    {
        self.result = "C"
    }
    else if self.per >= 45
    {
        self.result = "D+"
    }
    else
    {
        self.total = 0.0
        self.per = 0.0
        self.result = "FAIL"
    }
  }
}
