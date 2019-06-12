//
//  ViewController.swift
//  Sirius
//
//  Created by hongruqi on 06/12/2019.
//  Copyright (c) 2019 hongruqi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var tableView = UITableView()
    var dataArr = NSMutableArray()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView = UITableView(frame: CGRect(x: 0,y: 0,width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height), style: UITableViewStyle.grouped)
        tableView.dataSource = self
        tableView.delegate = self
        self.view.addSubview(tableView)
        dataArr = ["性能测试", "视觉测试", "crash触发", "通用测试"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "cell"
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: cellID)
        cell.textLabel?.text = dataArr[indexPath.row] as? String
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let performance = PerformanceViewController()
            self.navigationController?.pushViewController(performance, animated: true)
        default: break

        }


    }


}

