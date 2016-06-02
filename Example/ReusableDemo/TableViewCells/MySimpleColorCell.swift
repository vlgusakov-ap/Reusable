//
//  MySimpleColorCell.swift
//  ReusableDemo
//
//  Created by Olivier Halligon on 19/01/2016.
//  Copyright © 2016 AliSoftware. All rights reserved.
//

import UIKit
import Reusable

/**
 * This view is reusable and has a `reuseIdentifier` (as it's a TableViewCell
 * and it uses the TableView recycling mechanism).
 *
 * That's why it's annotated with the `Reusable` protocol.
 *
 * This view is NOT loaded from a NIB (but defined entierly by code),
 * that's why it's not annotated as `NibLoadable` but only `Reusable`
 */
class MySimpleColorCell: UITableViewCell, Reusable {
  private lazy var colorView: UIView = {
    let colorView = UIView()
    colorView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
    colorView.frame = self.contentView.bounds.insetBy(dx: 50, dy: 5)
    self.contentView.addSubview(colorView)
    return colorView
  }()

  func fill(color: UIColor) {
    self.colorView.backgroundColor = color
  }
}
