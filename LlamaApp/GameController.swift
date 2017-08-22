//
//  GameController.swift
//  LlamaApp
//
//  Created by Skyler Bala on 8/22/17.
//  Copyright © 2017 Skyler Bala. All rights reserved.
//

import Foundation
import UIKit

class GameController: UIViewController {

  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var scoreValue: UILabel!
  @IBOutlet weak var responseImage: UIImageView!

  var score = 0
  var imageType = 0

  let imageCount = 3
  let llamaImages = [#imageLiteral(resourceName: "llama1"), #imageLiteral(resourceName: "llama2"), #imageLiteral(resourceName: "llama3")]
  let duckImages = [#imageLiteral(resourceName: "duck1"), #imageLiteral(resourceName: "duck2"), #imageLiteral(resourceName: "duck3")]

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    changeImage()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  func changeImage() {
    let randomImage = Int(arc4random_uniform(UInt32(imageCount)))
    imageType = Int(arc4random_uniform(UInt32(2)))

    if (imageType == 0)
    {
      imageView.image = llamaImages[randomImage]
    }
    else
    {
      imageView.image = duckImages[randomImage]
    }

  }


  @IBAction func llamaButtonTouchUpInside(_ sender: Any) {
    if (imageType == 0)
    {
      responseImage.image = #imageLiteral(resourceName: "correctImage")
      self.responseImage.isHidden = false
      score += 1
    }
    else
    {
      responseImage.image = #imageLiteral(resourceName: "wrongImage")
      self.responseImage.isHidden = false
      score -= 1
    }
    let timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: false)
    { (t) in
      self.responseImage.isHidden = true;
    }

    scoreValue.text = "Score: \(score)"
    changeImage()
  }
  @IBAction func duckButtonTouchUpInside(_ sender: Any) {

    if (imageType == 1)
    {
      responseImage.image = #imageLiteral(resourceName: "correctImage")
      self.responseImage.isHidden = false
      score += 1
    }
    else
    {
      responseImage.image = #imageLiteral(resourceName: "wrongImage")
      self.responseImage.isHidden = false
      score -= 1
    }

    let timer = Timer.scheduledTimer(withTimeInterval: 3, repeats: false)
    { (t) in
      self.responseImage.isHidden = true;
    }
    scoreValue.text = "Score: \(score)"
    changeImage()
  }
}
