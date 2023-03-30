//
//  CustomCell.swift
//  NewsAppNew
//
//  Created by Indira on 30/3/23.
//

import UIKit
import SnapKit

class CustomCell: UITableViewCell {

    static let identifier = "CustomCell"
    
    private var imageview: UIImageView = {
        let v = UIImageView()
        return v
    }()
    private var label: UILabel = {
        let l = UILabel()
        l.textColor = .purple
        l.textAlignment = .center
        l.font = .systemFont(ofSize: 20)
        return l
    }()
    private var detailLabel: UILabel = {
        let l = UILabel()
        l.textColor = .purple
        l.textAlignment = .center
        l.font = .systemFont(ofSize: 16)
        l.numberOfLines = 0
        return l
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
            super.init(style: style, reuseIdentifier: reuseIdentifier)
            setupUI()
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    public func configure(with image: UIImage, and lbl: String){
        imageview.image = image
        label.text = lbl 
    }
    
    private func setupUI() {
        contentView.addSubview(imageview)
        imageview.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(30)
            make.height.equalTo(140)
            make.width.equalTo(200)
            make.right.equalToSuperview().offset(-30)
        }
        contentView.addSubview(label)
        label.snp.makeConstraints { make in
            make.top.left.equalToSuperview().inset(10)
            make.right.equalTo(imageview.snp.left).offset(10)
        }
        contentView.addSubview(detailLabel)
        detailLabel.snp.makeConstraints { make in
            make.top.equalTo(label.snp.bottom).offset(4)
            make.left.equalToSuperview().offset(10)
            make.right.equalTo(imageview.snp.left).offset(10)
        }
    }
    

}
