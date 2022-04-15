//
//  BrowseViewController.swift
//  JPLL
//
//  Created by Sarah Jaysmith on 2022-03-25.
//

import UIKit

class BrowsePuzzlesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var puzzleData = DataProvider.mockPuzzleData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Browse Puzzles"
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        puzzleData = DataProvider.puzzleData
        tableView.reloadData()
        
    }
    
    func completionHandler(puzzle: Puzzle) {
        // TODO: update your cell later on
    }
}

extension BrowsePuzzlesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FriendCell
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "imageCell", for: indexPath) as! PuzzleImageCell
        
        let puzzleData = puzzleData[indexPath.section].1
        cell.updateView(puzzle: puzzleData[indexPath.row])
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return puzzleData[section].0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let puzzleData = puzzleData[indexPath.section].1[indexPath.row]

        let vc = PuzzleDetailViewController()
        vc.puzzle = puzzleData
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let puzzleData = puzzleData[indexPath.section].1[indexPath.row]
        
        let action = UIContextualAction(style: .normal, title: "Favourite") { [weak self] (action, view, completionHandler) in
            self?.completionHandler(puzzle: puzzleData)
            completionHandler(true)
        }
        
        action.backgroundColor = .red
        return UISwipeActionsConfiguration(actions: [action])
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            puzzleData.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
}

extension BrowsePuzzlesViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return puzzleData.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return puzzleData[section].1.count
    }
}

