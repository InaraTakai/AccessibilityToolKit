//
//  ListTableViewController.swift
//  AccessibilityToolKit
//
//  Created by Gabriel Ferreira on 04/02/20.
//  Copyright © 2020 Inara Takashi. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {
    var backColor: UIColor?
    var titleList: String?
    var allCardsPrinciple: [Card] = []
    var cardTitle:String?
    
    let cardCell : String = "CardTableViewCell"
    let test : [(index : String, title : String, level : String)] =
        [(index : "1.1.1", title : "Socializar os meios", level : "AAA"),
         (index : "1.1.2", title : "Reforma agraria", level : "AA")]

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
        cell.levelLabel.text = self.allCardsPrinciple[indexPath.row].level.level()
        
        return cell
    }
    
    
}
