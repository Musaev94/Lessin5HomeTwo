//
//  ViewController.swift
//  Lessin5HomeTwo
//
//  Created by user on 8/1/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private lazy var tableView: UITableView = {
        let view = UITableView()
        view.dataSource = self
        view.delegate = self
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tViewStart()
    }
    
    private var names = ["ELdar", "Akilay", "Meder", "Ruslan", "Eldar1", "ELd454ar", "Akil5454ay", "Mede6r", "Ruslan4", "Eldar2"]
    
    private var foneNumbers = ["0500570222", "0500570222", "0500570222", "0500570222", "0500570222", "0500570222", "0500570222", "0500570222", "0500570222", "0500570222"]
    
    func tViewStart() {
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.top.bottom.left.right.equalToSuperview()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        70
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let index = indexPath.row
        
        let cell = CustomVIew()
        
        cell.indexNumbers.text = String(index)
        
        cell.titleName.text = names[index]
        
        cell.titleFone.text = foneNumbers[index]
        
        return cell
    }


}

