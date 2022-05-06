//
//  TweetTableViewCell.swift
//  TwitterClone
//
//  Created by Mochamad Dandi on 06/05/22.
//

import UIKit

class TweetTableViewCell: UITableViewCell {
  
  static let identifier = "TweetTableViewCell"
  
  private let avatarImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.contentMode = .scaleAspectFill
    imageView.layer.cornerRadius = 25
    imageView.layer.masksToBounds = true
    imageView.clipsToBounds = true
    imageView.image = UIImage(systemName: "person")
    imageView.backgroundColor = .red
    return imageView
  }()
  
  private let displayNameLabel: UILabel = {
    let label = UILabel()
    label.text = "Mochamad Dandi"
    label.font = .systemFont(ofSize: 18, weight: .bold)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let usernameLabel: UILabel = {
    let label = UILabel()
    label.text = "@dandisinaga"
    label.textColor = .secondaryLabel
    label.font = .systemFont(ofSize: 16, weight: .regular)
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()
  
  private let tweetTextContentLabel: UILabel = {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false
    label.text = "This is my mokcup tweet!,afhausfhauhfu ahsfabfs aiofnafi asdlnajksfnakshfasbfalbfca3aklklnabdansdaudnauic3yacklanwdacnidancanl"
    label.numberOfLines = 0
    return label
  }()
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    contentView.addSubview(avatarImageView)
    contentView.addSubview(displayNameLabel)
    contentView.addSubview(usernameLabel)
    contentView.addSubview(tweetTextContentLabel)
    
    configureConstraint()
  }
  
  private func configureConstraint() {
    let avataImageViewConstraint = [
      avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
      avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 14),
      avatarImageView.heightAnchor.constraint(equalToConstant: 50),
      avatarImageView.widthAnchor.constraint(equalToConstant: 50)
    ]
    let displayNameLabelConstraint = [
      displayNameLabel.leadingAnchor.constraint(equalTo: avatarImageView.trailingAnchor, constant: 20),
      displayNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20)
    ]
    let userNameLabelConstraint = [
      usernameLabel.leadingAnchor.constraint(equalTo: displayNameLabel.trailingAnchor, constant: 10),
      usernameLabel.centerYAnchor.constraint(equalTo: displayNameLabel.centerYAnchor)
    ]
    let tweetContentLabelConstraint = [
    
      tweetTextContentLabel.leadingAnchor.constraint(equalTo: displayNameLabel.leadingAnchor),
      tweetTextContentLabel.topAnchor.constraint(equalTo: displayNameLabel.bottomAnchor, constant: 10),
      tweetTextContentLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
      tweetTextContentLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15)
    ]
    NSLayoutConstraint.activate(avataImageViewConstraint)
    NSLayoutConstraint.activate(displayNameLabelConstraint)
    NSLayoutConstraint.activate(userNameLabelConstraint)
    NSLayoutConstraint.activate(tweetContentLabelConstraint)
  }
  required init(coder: NSCoder) {
    fatalError()
  }
}
