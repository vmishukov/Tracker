//
//  TabBarController.swift
//  Tracker
//
//  Created by Vladislav Mishukov on 14.01.2024.
//
import UIKit

final class TabBarViewController: UITabBarController, UITabBarControllerDelegate {
    
    override func viewDidLoad(){
        super.viewDidLoad()
        configure()
        self.viewControllers = [createTrackersViewController(),createStaticsticViewController()]
    }
    
    func createTrackersViewController() -> UINavigationController {
        let trackersViewController = TrackersViewController()
        trackersViewController.tabBarItem = UITabBarItem(title: NSLocalizedString("tabbar.tracker" , comment: ""),
                                                         image: UIImage(named: "tab_tracker_logo_active"),
                                                         selectedImage: nil)
        return UINavigationController(rootViewController: trackersViewController)
    }
    
    func createStaticsticViewController() -> UINavigationController {
        let statisticViewController = StatisticViewController()
        statisticViewController.tabBarItem = UITabBarItem(title: NSLocalizedString("tabbar.statistic", comment: ""),
                                                          image: UIImage(named: "tab_stat_logo_active"),
                                                          selectedImage: nil)
        return UINavigationController(rootViewController: statisticViewController)
    }
    
    private func configure() {
        view.backgroundColor = .ypWhite
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().backgroundImage = UIImage()
        let lineView = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 1))
        lineView.backgroundColor = .ypTabBarLine
        self.tabBar.addSubview(lineView)
    }
}
