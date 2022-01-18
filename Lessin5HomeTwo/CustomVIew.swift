//
//  CustomVIew.swift
//  Lessin5HomeTwo
//
//  Created by user on 8/1/22.
//

import Foundation
import SnapKit

class CustomVIew: UITableViewCell {
    
    lazy var indexNumbers: UILabel = {
        
        let view = UILabel()
        view.font = .boldSystemFont(ofSize: 20)
        return view
        
    }()
    
    lazy var titleName: UILabel = {
        
        let view = UILabel()
        view.font = .boldSystemFont(ofSize: 20)
        return view
        
    }()
    
    lazy var titleFone: UILabel = {
        
        let view = UILabel()
        view.font = .boldSystemFont(ofSize: 20)
        return view
        
    }()
    
    
    
    override func layoutSubviews() {
        titleConstr()
    }
    
    func titleConstr() {
        
        addSubview(indexNumbers)
        indexNumbers.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.left.equalToSuperview().inset(20)
        }

        addSubview(titleName)
        titleName.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.left.equalTo(indexNumbers.snp.right).offset(30)
        }
        
        addSubview(titleFone)
        titleFone.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.right.equalToSuperview().inset(20)
        }
        
        
        
    }
}
