//
//  ViewController.swift
//  Focus
//
//  Created by Boris Bügling on 30/10/15.
//  Copyright © 2015 Boris Bügling. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        print(label.performSelector("_whyIsThisViewNotFocusable"))
    }


}

