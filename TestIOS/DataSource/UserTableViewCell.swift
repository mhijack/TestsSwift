//
//  TableViewCell.swift
//  TestIOS
//
//  Created by Jianyuan Chen on 2021-03-28.
//

import UIKit
import Stevia

final class UserTableViewCell: UITableViewCell {
    
    weak var delegate: UserCellViewModelDelegate
    
    var viewModel: UserCellViewModel?  {
        didSet {
            viewModel?.delegate = self
        }
    }
    
    var avatar: UIImageView = UIImageView()
    var nameLabel: UILabel = UILabel()
    
    var avatarTapClosure: (() -> ())?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.subviews(avatar, nameLabel)
        avatar.top(>=0).bottom(>=0).leading(12).width(45).height(45).centerVertically()
        nameLabel.Leading == avatar.Trailing + 12
        nameLabel.top(>=0).bottom(>=0).trailing(12).centerVertically()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}

extension UserTableViewCell: UserCellViewModelDelegate {
    
    
    
}
