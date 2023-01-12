//
//  File.swift
//  
//
//  Created by Mahmudullah on 12/1/23.
//

import Foundation
import UIKit
extension UIView {
    func alignment(alignment: Alignment, parentView: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        switch alignment {
        case .center:
            NSLayoutConstraint.activate([
                self.centerXAnchor.constraint(equalTo: parentView.centerXAnchor),
                self.centerYAnchor.constraint(equalTo: parentView.centerYAnchor),
            ])
            break
        case .centerVertically:
            NSLayoutConstraint.activate([
                self.centerYAnchor.constraint(equalTo: parentView.centerYAnchor),
            ])
            break
        case .centerHorizontally:
            NSLayoutConstraint.activate([
                self.centerXAnchor.constraint(equalTo: parentView.centerXAnchor),
            ])
            break
        case .topLeading:
            let top =  self.topAnchor.constraint(equalTo: parentView.topAnchor)
            let left =  self.leftAnchor.constraint(equalTo: parentView.leftAnchor)
            
            NSLayoutConstraint.activate([
                top,
                left
            ])
            let constraintsDic =  Utils.instance.constraints[self.accessibilityIdentifier ?? ""]
            if constraintsDic != nil {
                Utils.instance.constraints[self.accessibilityIdentifier ?? ""]?[.topAnchor] = top
                Utils.instance.constraints[self.accessibilityIdentifier ?? ""]?[.leftAnchor] = left
                
            } else {
                Utils.instance.constraints[self.accessibilityIdentifier ?? ""] = [.topAnchor : top]
                Utils.instance.constraints[self.accessibilityIdentifier ?? ""] = [.leftAnchor : left]
                
            }
            break
        case .topTrailing:
            let top = self.topAnchor.constraint(equalTo: parentView.topAnchor)
            let right = self.rightAnchor.constraint(equalTo: parentView.rightAnchor)
            NSLayoutConstraint.activate([
                top,
                right
            ])
            let constraintsDic =  Utils.instance.constraints[self.accessibilityIdentifier ?? ""]
            if constraintsDic != nil {
                Utils.instance.constraints[self.accessibilityIdentifier ?? ""]?[.topAnchor] = top
                Utils.instance.constraints[self.accessibilityIdentifier ?? ""]?[.rightAnchor] = right
                
            } else {
                Utils.instance.constraints[self.accessibilityIdentifier ?? ""] = [.topAnchor : top]
                Utils.instance.constraints[self.accessibilityIdentifier ?? ""] = [.rightAnchor : right]
                
            }
            break
        case .bottomLeading:
            let bottom = self.bottomAnchor.constraint(equalTo: parentView.bottomAnchor)
            let left = self.leftAnchor.constraint(equalTo: parentView.leftAnchor)
            NSLayoutConstraint.activate([
                bottom,
                left
                
            ])
            let constraintsDic =  Utils.instance.constraints[self.accessibilityIdentifier ?? ""]
            if constraintsDic != nil {
                Utils.instance.constraints[self.accessibilityIdentifier ?? ""]?[.bottomAnchor] = bottom
                Utils.instance.constraints[self.accessibilityIdentifier ?? ""]?[.leftAnchor] = left
                
            } else {
                Utils.instance.constraints[self.accessibilityIdentifier ?? ""] = [.bottomAnchor : bottom]
                Utils.instance.constraints[self.accessibilityIdentifier ?? ""] = [.leftAnchor : left]
                
            }
            break
        case .bottomTrailing:
            let bottom = self.bottomAnchor.constraint(equalTo: parentView.bottomAnchor)
            let right =  self.rightAnchor.constraint(equalTo: parentView.rightAnchor)
            NSLayoutConstraint.activate([
                bottom ,
                right
                
            ])
            let constraintsDic =  Utils.instance.constraints[self.accessibilityIdentifier ?? ""]
            if constraintsDic != nil {
                Utils.instance.constraints[self.accessibilityIdentifier ?? ""]?[.bottomAnchor] = bottom
                Utils.instance.constraints[self.accessibilityIdentifier ?? ""]?[.rightAnchor] = right
                
            } else {
                Utils.instance.constraints[self.accessibilityIdentifier ?? ""] = [.bottomAnchor : bottom]
                Utils.instance.constraints[self.accessibilityIdentifier ?? ""] = [.rightAnchor : right]
                
            }
            break
        case .botomCenterHorizontally:
            let bottom = self.bottomAnchor.constraint(equalTo: parentView.bottomAnchor)
            NSLayoutConstraint.activate([
                bottom,
                self.centerXAnchor.constraint(equalTo: parentView.centerXAnchor)
            ])
            let constraintsDic =  Utils.instance.constraints[self.accessibilityIdentifier ?? ""]
            if constraintsDic != nil {
                Utils.instance.constraints[self.accessibilityIdentifier ?? ""]?[.bottomAnchor] = bottom
                
            } else {
                Utils.instance.constraints[self.accessibilityIdentifier ?? ""] = [.bottomAnchor : bottom]
                
            }
            break
        case .centerVerticallyLeading:
            let left = self.leftAnchor.constraint(equalTo: parentView.leftAnchor)
            NSLayoutConstraint.activate([
                self.centerYAnchor.constraint(equalTo: parentView.centerYAnchor),
                left
            ])
            let constraintsDic =  Utils.instance.constraints[self.accessibilityIdentifier ?? ""]
            if constraintsDic != nil {
                Utils.instance.constraints[self.accessibilityIdentifier ?? ""]?[.leftAnchor] = left
                
            } else {
                Utils.instance.constraints[self.accessibilityIdentifier ?? ""] = [.leftAnchor : left]
                
            }
            break
        case .centerVerticallyTrailing:
            let right =  self.rightAnchor.constraint(equalTo: parentView.rightAnchor)
            NSLayoutConstraint.activate([
                self.centerYAnchor.constraint(equalTo: parentView.centerYAnchor),
                right
            ])
            let constraintsDic =  Utils.instance.constraints[self.accessibilityIdentifier ?? ""]
            if constraintsDic != nil {
                Utils.instance.constraints[self.accessibilityIdentifier ?? ""]?[.rightAnchor] = right
                
            } else {
                Utils.instance.constraints[self.accessibilityIdentifier ?? ""] = [.rightAnchor : right]
                
            }
            break
        case .bottom:
            let bottom =  self.bottomAnchor.constraint(equalTo: parentView.bottomAnchor)
            NSLayoutConstraint.activate([
                bottom
            ])
            let constraintsDic =  Utils.instance.constraints[self.accessibilityIdentifier ?? ""]
            if constraintsDic != nil {
                Utils.instance.constraints[self.accessibilityIdentifier ?? ""]?[.bottomAnchor] = bottom
                
            } else {
                Utils.instance.constraints[self.accessibilityIdentifier ?? ""] = [.bottomAnchor : bottom]
                
            }
            break
        }
    }

}
