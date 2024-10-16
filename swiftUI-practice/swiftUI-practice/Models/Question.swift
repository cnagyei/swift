//
//  Question.swift
//  swiftUI-practice
//
//  Created by cal on 10/13/24.
//

import Foundation

struct Question: Hashable { // Add Hashable Conformance
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
        Question(questionText: "Who invented the World Wide Web?",
                 possibleAnswers: [
                    "Steve Jobs",
                    "Linux Torvalds",
                    "Tim Berners-Lee"
                 ],
                 correctAnswerIndex: 2),
        Question(questionText: "What was the first object oriented programming language?",
                 possibleAnswers:[
                    "Simula",
                    "Python",
                    "Swift",
                    "C"
                 ],
                 correctAnswerIndex: 0)
    ]
}
