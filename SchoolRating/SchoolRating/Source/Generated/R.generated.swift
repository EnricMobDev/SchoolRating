//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)
  
  static func validate() throws {
    try intern.validate()
  }
  
  /// This `R.color` struct is generated, and contains static references to 1 colors.
  struct color {
    /// Color `CustomIron`.
    static let customIron = Rswift.ColorResource(bundle: R.hostingBundle, name: "CustomIron")
    
    /// `UIColor(named: "CustomIron", bundle: ..., traitCollection: ...)`
    @available(tvOS 11.0, *)
    @available(iOS 11.0, *)
    static func customIron(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIColor? {
      return UIKit.UIColor(resource: R.color.customIron, compatibleWith: traitCollection)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.image` struct is generated, and contains static references to 5 images.
  struct image {
    /// Image `Arrivals`.
    static let arrivals = Rswift.ImageResource(bundle: R.hostingBundle, name: "Arrivals")
    /// Image `CircularDragon`.
    static let circularDragon = Rswift.ImageResource(bundle: R.hostingBundle, name: "CircularDragon")
    /// Image `Departures`.
    static let departures = Rswift.ImageResource(bundle: R.hostingBundle, name: "Departures")
    /// Image `SummaryArrivals`.
    static let summaryArrivals = Rswift.ImageResource(bundle: R.hostingBundle, name: "SummaryArrivals")
    /// Image `SummaryDeparture`.
    static let summaryDeparture = Rswift.ImageResource(bundle: R.hostingBundle, name: "SummaryDeparture")
    
    /// `UIImage(named: "Arrivals", bundle: ..., traitCollection: ...)`
    static func arrivals(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.arrivals, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "CircularDragon", bundle: ..., traitCollection: ...)`
    static func circularDragon(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.circularDragon, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "Departures", bundle: ..., traitCollection: ...)`
    static func departures(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.departures, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "SummaryArrivals", bundle: ..., traitCollection: ...)`
    static func summaryArrivals(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.summaryArrivals, compatibleWith: traitCollection)
    }
    
    /// `UIImage(named: "SummaryDeparture", bundle: ..., traitCollection: ...)`
    static func summaryDeparture(compatibleWith traitCollection: UIKit.UITraitCollection? = nil) -> UIKit.UIImage? {
      return UIKit.UIImage(resource: R.image.summaryDeparture, compatibleWith: traitCollection)
    }
    
    fileprivate init() {}
  }
  
  /// This `R.nib` struct is generated, and contains static references to 4 nibs.
  struct nib {
    /// Nib `DetailViewController`.
    static let detailViewController = _R.nib._DetailViewController()
    /// Nib `HomeViewController`.
    static let homeViewController = _R.nib._HomeViewController()
    /// Nib `OnboardingViewController`.
    static let onboardingViewController = _R.nib._OnboardingViewController()
    /// Nib `OriginAndDestinationTableViewCell`.
    static let originAndDestinationTableViewCell = _R.nib._OriginAndDestinationTableViewCell()
    
    /// `UINib(name: "DetailViewController", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.detailViewController) instead")
    static func detailViewController(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.detailViewController)
    }
    
    /// `UINib(name: "HomeViewController", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.homeViewController) instead")
    static func homeViewController(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.homeViewController)
    }
    
    /// `UINib(name: "OnboardingViewController", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.onboardingViewController) instead")
    static func onboardingViewController(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.onboardingViewController)
    }
    
    /// `UINib(name: "OriginAndDestinationTableViewCell", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.originAndDestinationTableViewCell) instead")
    static func originAndDestinationTableViewCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.originAndDestinationTableViewCell)
    }
    
    static func detailViewController(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
      return R.nib.detailViewController.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
    }
    
    static func homeViewController(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
      return R.nib.homeViewController.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
    }
    
    static func onboardingViewController(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
      return R.nib.onboardingViewController.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
    }
    
    static func originAndDestinationTableViewCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> OriginAndDestinationTableViewCell? {
      return R.nib.originAndDestinationTableViewCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? OriginAndDestinationTableViewCell
    }
    
    fileprivate init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 1 storyboards.
  struct storyboard {
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    fileprivate init() {}
  }
  
  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }
    
    fileprivate init() {}
  }
  
  fileprivate class Class {}
  
  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    try storyboard.validate()
    try nib.validate()
  }
  
  struct nib: Rswift.Validatable {
    static func validate() throws {
      try _DetailViewController.validate()
      try _OnboardingViewController.validate()
      try _OriginAndDestinationTableViewCell.validate()
    }
    
    struct _DetailViewController: Rswift.NibResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let name = "DetailViewController"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }
      
      static func validate() throws {
        if UIKit.UIImage(named: "SummaryArrivals", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'SummaryArrivals' is used in nib 'DetailViewController', but couldn't be loaded.") }
        if UIKit.UIImage(named: "SummaryDeparture", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'SummaryDeparture' is used in nib 'DetailViewController', but couldn't be loaded.") }
        if #available(iOS 11.0, *) {
        }
      }
      
      fileprivate init() {}
    }
    
    struct _HomeViewController: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "HomeViewController"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }
      
      fileprivate init() {}
    }
    
    struct _OnboardingViewController: Rswift.NibResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let name = "OnboardingViewController"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UIKit.UIView? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UIKit.UIView
      }
      
      static func validate() throws {
        if UIKit.UIImage(named: "CircularDragon", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'CircularDragon' is used in nib 'OnboardingViewController', but couldn't be loaded.") }
        if #available(iOS 11.0, *) {
        }
      }
      
      fileprivate init() {}
    }
    
    struct _OriginAndDestinationTableViewCell: Rswift.NibResourceType, Rswift.Validatable {
      let bundle = R.hostingBundle
      let name = "OriginAndDestinationTableViewCell"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> OriginAndDestinationTableViewCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? OriginAndDestinationTableViewCell
      }
      
      static func validate() throws {
        if UIKit.UIImage(named: "Arrivals", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'Arrivals' is used in nib 'OriginAndDestinationTableViewCell', but couldn't be loaded.") }
        if UIKit.UIImage(named: "Departures", in: R.hostingBundle, compatibleWith: nil) == nil { throw Rswift.ValidationError(description: "[R.swift] Image named 'Departures' is used in nib 'OriginAndDestinationTableViewCell', but couldn't be loaded.") }
        if #available(iOS 11.0, *) {
        }
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      try launchScreen.validate()
    }
    
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UIViewController
      
      let bundle = R.hostingBundle
      let name = "LaunchScreen"
      
      static func validate() throws {
        if #available(iOS 11.0, *) {
        }
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate init() {}
}
