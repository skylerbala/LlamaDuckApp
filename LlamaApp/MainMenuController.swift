//
//  ViewController.swift
//  LlamaApp
//
//  Created by Skyler Bala on 8/22/17.
//  Copyright © 2017 Skyler Bala. All rights reserved.
//

import UIKit

class MainMenuController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func playButtonTouchUpInside(_ sender: Any) {
    performSegue(withIdentifier: "goToGameSegue", sender: self)
  }


}
