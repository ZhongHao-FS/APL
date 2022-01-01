//
//  ThirdViewController.swift
//  AOC - FinalExam
//
//  Created by Joshua Shroyer on 4/28/15.
//  Copyright (c) 2014 Full Sail University. All rights reserved.
//  Edited by Hao Zhong

import UIKit

class ThirdViewController: UIViewController, UITextFieldDelegate {
  
  @IBOutlet weak var albumName: UITextField!
  @IBOutlet weak var yearReleased: UITextField!
  @IBOutlet weak var song1: UITextField!
  @IBOutlet weak var song2: UITextField!
  @IBOutlet weak var song3: UITextField!
  @IBOutlet weak var song4: UITextField!
  @IBOutlet weak var song5: UITextField!
  @IBOutlet weak var song6: UITextField!
  
    var album: Album! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case self.albumName:
            self.yearReleased.becomeFirstResponder()
        case self.yearReleased:
            self.song1.becomeFirstResponder()
        case self.song1:
            self.song2.becomeFirstResponder()
        case self.song2:
            self.song3.becomeFirstResponder()
        case self.song3:
            self.song4.becomeFirstResponder()
        case self.song4:
            self.song5.becomeFirstResponder()
        case self.song5:
            self.song6.becomeFirstResponder()
        default:
            self.view.endEditing(true)
        }
        
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func cancel(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if albumName.text == "" || yearReleased.text == "" {
            displayAlert(warning: "Album name and year are required.")
            return false
        } else if song1.text == "", song2.text == "", song3.text == "", song4.text == "", song5.text == "", song6.text == "" {
            displayAlert(warning: "The name of at least 1 song is required.")
            return false
        } else {
            album = Album(name: albumName.text!, year: Int(yearReleased.text!) ?? 2016)
            if let s1 = song1.text, s1 != "" {
                album.songs.append(s1)
            }
            if let s2 = song2.text, s2 != "" {
                album.songs.append(s2)
            }
            if let s3 = song3.text, s3 != "" {
                album.songs.append(s3)
            }
            if let s4 = song4.text, s4 != "" {
                album.songs.append(s4)
            }
            if let s5 = song5.text, s5 != "" {
                album.songs.append(s5)
            }
            if let s6 = song6.text, s6 != "" {
                album.songs.append(s6)
            }
            return true
        }
    }
    
    func displayAlert(warning: String) {
        let alert = UIAlertController(title: "Warning", message: warning, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
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
