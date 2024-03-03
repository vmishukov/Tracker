//
//  TrackerOnboardingView.swift
//  Tracker
//
//  Created by Vladislav Mishukov on 03.03.2024.
//

import Foundation
import UIKit

final class TrackerOnboardingViewController: UIViewController {
// MARK: - UI
    private lazy var onboardingBackgroundPic: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        return imageView
    }()
    
    private lazy var onboardingTitle: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 32, weight: .bold)
        label.textColor = .ypBlack
        label.textAlignment = .center
        
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        return label
    }()
    

    
// MARK: - lifecycle
    override func viewDidLoad() {
        constraitsonboardingTitle()
        constraitsOnboardingBackgroundPic()
        super.viewDidLoad()
    }
// MARK: - public
    func initialize(setBackgroundPic pic: UIImage, setTitle title: String ) {
        onboardingBackgroundPic.image = pic
        onboardingTitle.text = title
    }
// MARK: - constraits
    private func constraitsOnboardingBackgroundPic() {
        NSLayoutConstraint.activate([
            onboardingBackgroundPic.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            onboardingBackgroundPic.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            onboardingBackgroundPic.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            onboardingBackgroundPic.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }
    private func constraitsonboardingTitle() {
        NSLayoutConstraint.activate([
            onboardingTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            onboardingTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            onboardingTitle.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
        ])
    }
}
