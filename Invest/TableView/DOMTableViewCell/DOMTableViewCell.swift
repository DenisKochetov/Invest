//
//  DOMTableViewCell.swift
//  Invest
//
//  Created by ms24 on 25.10.21.
//

import UIKit

final class CustomTableContainerView: UIView {
    
    
    
    private let headerLabel: UILabel = {
        let label = UILabel()
        label.text = "Depth of market"
        label.textColor = .black
        return label
    }()
    
    private let tableView = UITableView()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        addSubview(headerLabel)
        addSubview(tableView)
        backgroundColor = .white
        tableView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
    
        fatalError("dsdskdsko")
    }
    
    override func updateConstraints() {
        [
            headerLabel.topAnchor.constraint(equalTo: self.topAnchor),
            headerLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            tableView.topAnchor.constraint(equalTo: headerLabel.bottomAnchor, constant: 20),
            tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ]
            .forEach{$0.isActive = true}
        super.updateConstraints()
    }
}
