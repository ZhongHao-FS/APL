//
//  SecondViewController.swift
//  AOC - FinalExam
//
//  Created by Joshua Shroyer on 4/28/15.
//  Copyright (c) 2014 Full Sail University. All rights reserved.
//  Edited by Hao Zhong

import UIKit

class SecondViewController: UIViewController {
  
  @IBOutlet weak var artistImage: UIImageView!
  @IBOutlet weak var artistDescription: UITextView!
  @IBOutlet weak var artistLabel: UILabel!
  
  // *cough* used for "Referencing" the artist that was selected in the first ViewController
  var selectedArtist: Artist! = nil
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
    artistImage.image = selectedArtist.image
    artistDescription.text = selectedArtist.description
    artistLabel.text = selectedArtist.name
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
    
    @IBAction func unwindToParent(segue: UIStoryboardSegue) {
        let source = segue.source as! ThirdViewController
        selectedArtist.albums.append(source.album)
        artistDescription.text = selectedArtist.description
    }
    /*
  // MARK: - Navigation
  
  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
  // Get the new view controller using segue.destinationViewController.
  // Pass the selected object to the new view controller.
  }
  */
  
}
