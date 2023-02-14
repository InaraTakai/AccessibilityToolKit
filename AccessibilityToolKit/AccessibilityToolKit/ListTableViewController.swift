//
//  ListTableViewController.swift
//  AccessibilityToolKit
//
//  Created by Gab Ferreira on 04/02/20.
//  Copyright © 2020 Inara Takashi. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    var backColor: UIColor?
    var titleList: String?
    var allCardsPrinciple: [Card] = []
    var cardTitle:String?
    
    var selectedCard: Card?
    
    let cardCell : String = "CardTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.clearsSelectionOnViewWillAppear = false
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.black]
        
        self.title = titleList
        
        self.tableView.backgroundColor = backColor
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.indexDisplayMode = .alwaysHidden
           
        let nib = UINib.init(nibName: self.cardCell, bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: self.cardCell)
        
        if let cardsPrinciple = listaPrinciple[titleList!] {
            for cardd in cardsPrinciple {
                allCardsPrinciple.append(cardd)
            }
            tableView.reloadData()
        }
        tableView.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        self.navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.allCardsPrinciple.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: self.cardCell, for: indexPath) as! CardTableViewCell

        cell.indexLabel.text = self.allCardsPrinciple[indexPath.row].code
        cell.titleLabel.text = self.allCardsPrinciple[indexPath.row].criterion
        cell.levelLabel.text = self.allCardsPrinciple[indexPath.row].level.description
        cell.levelVoiceOver = self.allCardsPrinciple[indexPath.row].level
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath as IndexPath)
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
        self.selectedCard = self.allCardsPrinciple[indexPath.row]
        performSegue(withIdentifier: "segueList", sender: cell)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueList"{
            if let nav = segue.destination as? UINavigationController {
                if let card = nav.viewControllers[0] as? CardViewController {
                    card.card = self.selectedCard
                }
            }
        }
    }
    
    
}
