//
//  Manager.swift
//  LifeCycleApp
//
//  Created by Кирилл Медведев on 13/05/2019.
//  Copyright © 2019 Kirill Medvedev. All rights reserved.
//

import UIKit

class Manager: NSObject {
   
        static let shared = Manager()
         var functions = [String]()
    
        func printMessage(textView: UITextView, viewController: UIViewController, function: String = #function) {
            
            functions.append((viewController.title ?? "nil") + " - " + (function))
            let string = functions.joined(separator: "\n")
            textView.text = string
            
            textViewScrollToBottom(textView)
    }
    
    // MARK: - Scroll
    private func textViewScrollToBottom(_ textView: UITextView) {
        let bottom = NSMakeRange(textView.text.count-1, 1)
        textView.scrollRangeToVisible(bottom)
    }
}


