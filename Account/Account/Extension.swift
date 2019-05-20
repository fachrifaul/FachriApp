//
//  ResourceBundleExtension.swift
//  Account
//
//  Created by Fachri Febrian on 21/05/2019.
//

import Foundation

public class Constant {
    //    public static let pathResources = "/PlugIns/AccountResources"
    public static let pathResources = "AccountResources"
    public static let resourcePath: String = Bundle.main.path(
        forResource: Constant.pathResources,
        ofType: "bundle")!
    public static let bundle: Bundle = Bundle(path: Constant.resourcePath)!
}

extension UIImage {
    static func sampleImage(named name: String) -> UIImage? {
        return UIImage(
            named: name,
            in: Constant.bundle,
            compatibleWith: nil
        )
    }
}

extension UIView {
    public class func fromNib<T: UIView>(forResource: String? = nil) -> T {
        var nibBundle = Bundle(for: T.self)
        if let forResource = forResource,
            let resourcePath = Bundle.main.path(forResource: forResource, ofType: "bundle"),
            let bundle = Bundle(path: resourcePath) {
            nibBundle = bundle
        }
        if let nibs = nibBundle.loadNibNamed(String(describing: T.self), owner: nil, options: nil) {
            if let viewFromNib = nibs.first as? T {
                return viewFromNib
            } else {
                fatalError("nibs is empty or cannot be converted to \(String(describing: T.self))")
            }
        } else {
            fatalError("nib named \(String(describing: T.self)) cannot be loaded")
        }
    }
}
