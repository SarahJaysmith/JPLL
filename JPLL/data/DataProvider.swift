//
//  DataProvider.swift
//  JPLL
//
//  Created by Sarah Jaysmith on 2022-03-25.
//

import UIKit

class DataProvider{
    
    static var userData = [(String, [User])]()
    
    static func mockUserData() -> [(String, [User])] {
        
        var aSection: [User] = []
        var bSection: [User] = []
        var cSection: [User] = []
        
        aSection.append(
            User(
                image: UIImage(named: "uGuitar"),
                nickname: "Alexander Valley",
                email: "alexandervalley@hotmail.com",
                password: "alexandervalley"
            )
        )
        
        aSection.append(
            User(
                image: UIImage(named: "avatar"),
                nickname: "Alex Stanton",
                email: "alexstanton@hotmail.com",
                password: "alexstanton"
            )
        )
        
        bSection.append(
            User(
                image: UIImage(named: "avatar"),
                nickname: "Brian Seif",
                email: "brianseif@hotmail.com",
                password: "brianseif"
            )
        )
        
        bSection.append(
            User(
                image: UIImage(named: "avatar"),
                nickname: "Benita Stanton",
                email: "benikastanton@hotmail.com",
                password: "benikastanton"
            )
        )
        
        bSection.append(
            User(
                image: UIImage(named: "avatar"),
                nickname: "Barbara Smith",
                email: "barbarasmith@hotmail.com",
                password: "barbarasmith"
            )
        )
        
        cSection.append(
            User(
                image: UIImage(named: "avatar"),
                nickname: "Celine Leon",
                email: "celineleon@hotmail.com",
                password: "celineleon"
            )
        )
        
        userData = [
            ("A", aSection),
            ("B", bSection),
            ("C", cSection),
        ]
        
        return userData
    }
    
    static var puzzleData = [(String, [Puzzle])]()
    
    static func mockPuzzleData() -> [(String, [Puzzle])]{
        
        var aSection: [Puzzle] = []
        var bSection: [Puzzle] = []
        var cSection: [Puzzle] = []
        
        aSection.append(
            Puzzle(
                puzzleID: 1,
                puzzleTitle: "Winter Trio Horses",
                manufacturer: "Cobble Hill",
                numPieces: 1000,
                recommendedAge: 12,
                puzzleImage: UIImage(named: "chWinterTrioHorses"),
                keywords: ["horses", "nature"],
                regularShapes: false,
                amazonLink: "https://www.amazon.ca/Cobble-Hill-Winter-Trio-1000-Piece/dp/B004UMANQ0/"
            )
        )
        
        bSection.append(
            Puzzle(
                puzzleID: 2,
                puzzleTitle: "Library Cat",
                manufacturer: "Cobble Hill",
                numPieces: 1000,
                recommendedAge: 12,
                puzzleImage: UIImage(named: "chLibraryCat"),
                keywords: ["cats", "books"],
                regularShapes: false,
                amazonLink: "https://www.amazon.ca/Cobble-Hill-80124-Library-Puzzles/dp/B01H7RMXXK"
                
            )
        )
        
        cSection.append(
            Puzzle(
                puzzleID: 3,
                puzzleTitle: "Birds of the Season",
                manufacturer: "Cobble Hill",
                numPieces: 1000,
                recommendedAge: 12,
                puzzleImage: UIImage(named: "chBirdsSeason"),
                keywords: ["birds", "nature"],
                regularShapes: false,
                amazonLink: "https://www.amazon.ca/Cobble-Hill-1000-Piece-Puzzle/dp/B081G68PZT"
            )
        )
        
        puzzleData = [
            ("A", aSection),
            ("B", bSection),
            ("C", cSection),
        ]
        
        return puzzleData
    }
}
