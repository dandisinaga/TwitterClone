//
//  ViewController.swift
//  TwitterClone
//
//  Created by Mochamad Dandi on 03/05/22.
//

import UIKit

class MainTabBarViewController: UITabBarController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let vcHome = UINavigationController(rootViewController: HomeViewController())
    let vcSearch = UINavigationController(rootViewController: SearchViewController())
    let vcNotifications = UINavigationController(rootViewController: NotificationsViewController())
    let vcDirectMessages = UINavigationController(rootViewController: DirectMessagesViewController())
    
    vcHome.tabBarItem.image = UIImage(systemName: "house")
    vcHome.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
    
    vcSearch.tabBarItem.image = UIImage(systemName: "magnifyingglass")
    
    vcNotifications.tabBarItem.image = UIImage(systemName: "bell")
    vcNotifications.tabBarItem.selectedImage = UIImage(systemName: "bell.fill")
    
    vcDirectMessages.tabBarItem.image = UIImage(systemName: "envelope")
    vcDirectMessages.tabBarItem.selectedImage = UIImage(systemName: "envelope.fill")
    
    setViewControllers([vcHome, vcSearch, vcNotifications, vcDirectMessages], animated: true)
  }
  
  
}

