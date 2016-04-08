//
//  GameModel.swift
//  Assignment1
//
//  Created by Scott Edward Young on 5/04/2016.
//  Copyright © 2016 test. All rights reserved.
//

import Foundation
import UIKit

protocol gameDidComplete{
	func myAppViewController(controller: GameModel)
}

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
    var gameScore : Int
    
    init()
    {
        index = 0
        index2 = 1
        flag = false
        tiles = [TileData(imageidentifier: 1, image : UIImage(named: "Images/baldhill.png")!)];
        counter = 0
        gameScore = 0
    }
	
	//delegate?.gameDidComplete(self)
	
	
    init(numTiles : Int, images : [UIImage])
    {
        index = 0
        index2 = 1
        flag = false
        tiles = [];
        var temp : Int
        temp = 0
        for var i = 1; i <= numTiles; i++ {
            tiles.append(TileData(imageidentifier: i, image : images[i%images.count]));
            tiles.append(TileData(imageidentifier: i, image : images[i%images.count]));
        }
		
		let c = tiles.count
		if c < 2 {}
		else
		{
			for i in 0..<(c - 1) {
				let j = Int(arc4random_uniform(UInt32(c - i))) + i
				var temp : TileData
				temp = tiles[i]
				tiles[i] = tiles[j]
				tiles[j] = temp
			}
		}
		
        counter = 0
        gameScore = 0
    }
	
    func reset()
    {
        index = 0
        index2 = 1
        flag = false
        tiles = [];
        counter = 0
        gameScore = 0
    }
    
    var description : String
    {
		var toReturn : String
		toReturn = "Images: "
		print("Num:  \(tiles.count)")
		for var i = 0; i <= tiles.count-1; i++
		{
			toReturn += "\(tiles[i].imageidentifier), "
		}
        return toReturn
    }
	
	func pushTileIndex(num : Int)
	{
		index2 = index
		index = num
	}
	
	
/*
1) gameDidComplete(gameModel)
2) didMatchTile(gameModel, tileIndex, previousTileIndex)
3) didFailToMatchTile(gameModel, tileIndex, previousTileIndex) 4) scoreDidUpdate(gameModel, newScore)
*/
}

