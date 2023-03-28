//
//  Questions.swift
//  Are you smarter than a 4th grader?
//
//  Created by Amit Tandel on 3/27/23.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
