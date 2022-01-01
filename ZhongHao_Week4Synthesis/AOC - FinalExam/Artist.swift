//
//  Artist.swift
//  AOC - FinalExam
//
//  Created by Joshua Shroyer on 4/28/15.
//  Copyright (c) 2014 Full Sail University. All rights reserved.
//  Edited by Hao Zhong

import UIKit
import Foundation

class Artist {
  // These variables should stay here
  var image: UIImage?
  var name: String
  var genre: String
  var albums: [Album]
  
    // description computed property that should give a small description upon being accessed. Will even list out each album too.
    var description: String {
    get{
      var localString = "\(name) is a \(genre) band with \(albums.count) album(s):\n\n";
      for album in albums {
        localString += album.desc
      }
    return localString
    }
  }
  
  init(name: String, genre: String, image: UIImage?) {
    self.name = name
    self.genre = genre
    self.image = image
    
    // This is ok. The user is the one building the album data for each artist. :)
    self.albums = []
  }
}
