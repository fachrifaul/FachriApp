//
//  ResourceBundleExtension.swift
//  Account
//
//  Created by Fachri Febrian on 21/05/2019.
//

import Foundation

public class Constant {
    public static let pathResources = "/PlugIns/AccountResources"
}

extension UIImage {
    static func sampleImage(named name: String) -> UIImage? {
        let resourcePath: String = Bundle.main.path(forResource: Constant.pathResources, ofType: "bundle")!
        return UIImage(
            named: name,
            in: Bundle(path: resourcePath),
            compatibleWith: nil
        )
    }
}
