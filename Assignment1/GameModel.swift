//
//  GameModel.swift
//  Assignment1
//
//  Created by Scott Edward Young on 5/04/2016.
//  Copyright © 2016 test. All rights reserved.
//

import Foundation
import UIKit

class GameModel : CustomStringConvertible
{
    struct TileData
    {
        var imageidentifier : Int
        var image : UIImage
    };
    var index : Int
    var index2 : Int
    var tiles : [TileData]
    var flag : Bool
    var counter : Int
    var delegate : addr64_t
    var gameScore : Int
    
    init()
    {
        index = 0
        index2 = 1
        flag = false
        tiles = [TileData(imageidentifier: 1, image : UIImage(named: "Images/baldhill.png")!)];
        counter = 0
        delegate = 0
        gameScore = 0
    }
    
    init(numTiles : Int, images : [UIImage])
    {
        index = 0
        index2 = 1
        flag = false
        tiles = [TileData(imageidentifier: 1, image : UIImage(named: "baldhill.png")!)];
        var temp : Int
        temp = 0
        for i in images {
            tiles.append(TileData(imageidentifier: temp, image : i));
            tiles.append(TileData(imageidentifier: temp, image : i));
        }
        counter = 0
        delegate = 0
        gameScore = 0
        reset();
    }
    
    func reset()
    {
        index = 0
        index2 = 1
        flag = false
        tiles = [TileData(imageidentifier: 1, image : UIImage(named: "baldhill.png")!)];
        counter = 0
        delegate = 0
        gameScore = 0
    }
    
    var description : String
    {
        return "my object";
    }
}

