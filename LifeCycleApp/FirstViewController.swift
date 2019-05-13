//
//  FirstViewController.swift
//  LifeCycleApp
//
//  Created by Кирилл Медведев on 13/05/2019.
//  Copyright © 2019 Kirill Medvedev. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var textViewLabel: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Manager.shared.printMessage(textView: textViewLabel, viewController: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        Manager.shared.printMessage(textView: textViewLabel, viewController: self)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        Manager.shared.printMessage(textView: textViewLabel, viewController: self)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        Manager.shared.printMessage(textView: textViewLabel, viewController: self)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        Manager.shared.printMessage(textView: textViewLabel, viewController: self)
    }

}
