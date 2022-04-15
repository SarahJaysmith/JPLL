//
//  PuzzleDetailViewController.swift
//  JPLL
//
//  Created by Sarah Jaysmith on 2022-03-25.
//

import UIKit

class PuzzleDetailViewController: UIViewController {
    
    var puzzle: Puzzle?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        title = "Detail view"
        
        puzzle?.puzzleTitle = "Updated title"
        
        var mockPuzzleData = DataProvider.mockPuzzleData()
        
        mockPuzzleData.append(("Updated", [puzzle!]))
        
        DataProvider.puzzleData = mockPuzzleData
    }
}
