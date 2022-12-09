//
//  String+Localization.swift
//  submission-capstone-project
//
//  Created by Rezki Pratama on 10/12/22.
//

import Foundation

extension String {
  public func localized(identifier: String) -> String {
    let bundle = Bundle(identifier: identifier) ?? .main
    return bundle.localizedString(forKey: self, value: nil, table: nil)
  }
}
