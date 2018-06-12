//
//  ViewController.swift
//  HamburgerMenuTemplate
//
//  Created by Tim Coster on 12/06/2018.
//  Copyright © 2018 Tim Coster. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

	@IBOutlet weak var mainViewLeadingConstraint: NSLayoutConstraint!
	@IBOutlet weak var mainViewTrailingConstraint: NSLayoutConstraint!
	@IBOutlet weak var mainView: UIView!
	
	var menuIsVisible:Bool = false
	var mainViewLeadingStartingConstraint:CGFloat!
	
	@IBAction func MenuButtonPressed(_ sender: Any?)
	{
		if !menuIsVisible
		{
			mainViewLeadingConstraint.constant = 150
			mainViewTrailingConstraint.constant = 150
		}
		else
		{
			mainViewLeadingConstraint.constant = mainViewLeadingStartingConstraint
			mainViewTrailingConstraint.constant = 0
		}
		
		menuIsVisible = !menuIsVisible
		
		UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations:
		{
			self.view.layoutIfNeeded()
		})
		{
			(animationComplete) in
			print("The Animation is Complete!")
		}
	}
	
	
	override func viewDidLoad()
	{
		super.viewDidLoad()
		mainViewLeadingStartingConstraint = mainViewLeadingConstraint.constant
		mainView.layer.shadowRadius = 10
		mainView.layer.shadowOpacity = 0.2
//		self.navigationController?.view.layer.shadowRadius = 10
//		self.navigationController?.view.layer.shadowOpacity = 0.2

		
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

