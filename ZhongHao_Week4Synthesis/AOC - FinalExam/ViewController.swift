//
//  ViewController.swift
//  AOC - FinalExam
//
//  Created by Joshua Shroyer on 4/28/15.
//  Copyright (c) 2014 Full Sail University. All rights reserved.
//  Edited by Hao Zhong

import UIKit

class ViewController: UIViewController {
  
  var artists: [Artist] = []
  var selectedArtist : Artist! = nil
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    let beatlesImage = UIImage(named: "Beatles.jpg")
    let rollingStonesImage = UIImage(named: "Rolling_Stones.jpg")!
    let ledZepplinImage = UIImage(named: "Led_Zepplin.jpg")
    let pinkFloydImage = UIImage(named: "Pink_Floyd.jpg")!
    let queenImage = UIImage(named: "Queen.jpg")
    let beatles = Artist(name: "Beatles", genre: "Rock", image: beatlesImage)
    let rollingStones = Artist(name: "Rolling Stones", genre: "Blues Rock", image: rollingStonesImage)
    let ledZepplin = Artist(name: "Led Zepplin", genre: "Hard Rock", image: ledZepplinImage!)
    let pinkFloyd = Artist(name: "Pink Floyd", genre: "Progressive Rock", image: pinkFloydImage)
    let queen = Artist(name: "Queen", genre: "Rock", image: queenImage)
    artists = [beatles, ledZepplin, queen, pinkFloyd, rollingStones]
  }
  
  @IBAction func artistButtonTapped(_ sender: UIButton) {
    // use the tag property of the button pressed to know which Artist to send over
    var index = sender.tag
    if sender.tag == 5 {
        index = Int.random(in: 0...4)
    }
    selectedArtist = artists[index]
    performSegue(withIdentifier: "ToSecondViewController", sender: sender)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let secondVC = segue.destination as! SecondViewController
    secondVC.selectedArtist = selectedArtist
    
    // pass a "Reference" of the selectedArtist over to the secondViewController so it can be updated elsewhere but still change our information here.
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
    @IBAction func unwindToRoot(segue: UIStoryboardSegue) {
        let source = segue.source as! SecondViewController
        for i in 0...4 {
            if artists[i].name == source.selectedArtist.name {
                artists[i] = source.selectedArtist
            }
        }
    }
}

