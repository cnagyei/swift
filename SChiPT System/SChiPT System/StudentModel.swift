//
//  StudentModel.swift
//  SChiPT System
//
//  Created by cal on 1/12/25.
//

import Foundation

// Welcome page
print("Welcome to the Shared Child Performance Tracker (SChiPT")
print("Smart Start Montessori School, Accra, Ghana")

// Create student
struct Student {
    var name: String
    var id: String
    var gradeClass: String
}

// Create course
struct Course {
    var name: String
    var id: Int
    var description: String
    var Teacher: Teacher
}

// Create teacher
struct Teacher {
    var name: String
    var gradeClass: String
}

// Upload results
func uploadResult(grade: Int, student: Student) {
    print("Results successfully uploaded in \(student)'s records!")
}
