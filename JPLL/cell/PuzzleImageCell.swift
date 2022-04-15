//
//  ImageCell.swift
//  JPLL
//
//  Created by Sarah Jaysmith on 2022-03-25.
//

import UIKit

class PuzzleImageCell: UITableViewCell {
    
    @IBOutlet weak var currentImageView: UIImageView!
    
    func updateView(puzzle: Puzzle){
        currentImageView.image = puzzle.puzzleImage
    }
}
