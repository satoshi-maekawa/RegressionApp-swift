//
//  SampleDataViewController.swift
//  RegressionApp
//
//  Created by user on 2023/06/13.
//

import UIKit

class SampleDataViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    // サンプルデータ
    let data: [[String]] = [
        ["y", "x1", "x2", "x3", "x4"],
        ["8.2", "0", "0", "0", "0"],
        ["7.5", "0", "0", "2", "0"],
        ["7.2", "0", "30", "5", "5"],
        ["7.2", "0", "70", "8", "8"],
        ["5.6", "30", "0", "5", "8"],
        ["6.3", "30", "30", "8", "0"],
        ["8.5", "30", "70", "2", "5"],
        ["5.7", "60", "0", "8", "5"],
        ["8.9", "60", "70", "5", "0"],
        ["8.9", "60", "0", "2", "0"],
        ["3.7", "0", "0", "8", "0"],
        ["7.6", "0", "0", "2", "8"]
    ]
    
    // テーブルビュー
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // テーブルビューのデータソースとデリゲートを設定
        tableView.dataSource = self
        tableView.delegate = self
        
        // テーブルビューのセル登録
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    
    // テーブルビューの行数を設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    // テーブルビューのセルを設定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let rowData = data[indexPath.row]
        cell.textLabel?.text = rowData.joined(separator: "\t")
        
        return cell
    }
}
