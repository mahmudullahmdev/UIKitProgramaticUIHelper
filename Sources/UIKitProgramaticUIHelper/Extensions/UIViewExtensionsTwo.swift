//
//  File.swift
//  
//
//  Created by Mahmudullah on 12/1/23.
//
import Foundation
import UIKit
extension UIView {
    public  func setConstraints(topOf: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constraint = self.bottomAnchor.constraint(equalTo: topOf.topAnchor)
        NSLayoutConstraint.activate([
            constraint
        ])
        let constraintsDic =  Utils.instance.constraints[self.accessibilityIdentifier ?? ""]
        if constraintsDic != nil {
            Utils.instance.constraints[self.accessibilityIdentifier ?? ""]?[.bottomAnchor] = constraint
        } else {
            Utils.instance.constraints[self.accessibilityIdentifier ?? ""] = [.bottomAnchor : constraint]
        }
        
    }
    public func setConstraints(bottomOf: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constraint =  self.topAnchor.constraint(equalTo: bottomOf.bottomAnchor)
        
        NSLayoutConstraint.activate([
            constraint
        ])
        let constraintsDic =  Utils.instance.constraints[self.accessibilityIdentifier ?? ""]
        if constraintsDic != nil {
            Utils.instance.constraints[self.accessibilityIdentifier ?? ""]?[.topAnchor] = constraint
        } else {
            Utils.instance.constraints[self.accessibilityIdentifier ?? ""] = [.topAnchor : constraint]
        }
    }
    public func setConstraints(leftOf: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constraint = self.rightAnchor.constraint(equalTo: leftOf.leftAnchor)
        
        NSLayoutConstraint.activate([
            constraint
        ])
        let constraintsDic =  Utils.instance.constraints[self.accessibilityIdentifier ?? ""]
        if constraintsDic != nil {
            Utils.instance.constraints[self.accessibilityIdentifier ?? ""]?[.rightAnchor] = constraint
        } else {
            Utils.instance.constraints[self.accessibilityIdentifier ?? ""] = [.rightAnchor : constraint]
        }
        
    }
    public func setConstraints(rightOf: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constraint = self.leftAnchor.constraint(equalTo: rightOf.rightAnchor)
        NSLayoutConstraint.activate([
            constraint
        ])
        let constraintsDic =  Utils.instance.constraints[self.accessibilityIdentifier ?? ""]
        if constraintsDic != nil {
            Utils.instance.constraints[self.accessibilityIdentifier ?? ""]?[.leftAnchor] = constraint
        } else {
            Utils.instance.constraints[self.accessibilityIdentifier ?? ""] = [.leftAnchor : constraint]
        }
    }
    public func setConstraints(centerOf: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.centerYAnchor.constraint(equalTo: centerOf.centerYAnchor),
            self.centerXAnchor.constraint(equalTo: centerOf.centerXAnchor)
            
        ])
    }
    public  func setConstraints(topOf: UIView, bottomOf: UIView, leftOf: UIView, rightOf: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        let bottomAnchor = self.bottomAnchor.constraint(equalTo: topOf.topAnchor)
        let topAnchor =  self.topAnchor.constraint(equalTo: bottomOf.bottomAnchor)
        let rightAnchor = self.rightAnchor.constraint(equalTo: leftOf.leftAnchor)
        let leftAnchor =  self.leftAnchor.constraint(equalTo: rightOf.rightAnchor)
        NSLayoutConstraint.activate([
            bottomAnchor,
            topAnchor,
            rightAnchor,
            leftAnchor
        ])
        Utils.instance.constraints[self.accessibilityIdentifier ?? ""]?[.leftAnchor] = leftAnchor
        Utils.instance.constraints[self.accessibilityIdentifier ?? ""]?[.rightAnchor] = rightAnchor
        Utils.instance.constraints[self.accessibilityIdentifier ?? ""]?[.topAnchor] = topAnchor
        Utils.instance.constraints[self.accessibilityIdentifier ?? ""]?[.bottomAnchor] = bottomAnchor
        let constraintsDic =  Utils.instance.constraints[self.accessibilityIdentifier ?? ""]
        if constraintsDic != nil {
            Utils.instance.constraints[self.accessibilityIdentifier ?? ""]?[.topAnchor] = topAnchor
            Utils.instance.constraints[self.accessibilityIdentifier ?? ""]?[.bottomAnchor] = bottomAnchor
            Utils.instance.constraints[self.accessibilityIdentifier ?? ""]?[.leftAnchor] = leftAnchor
            Utils.instance.constraints[self.accessibilityIdentifier ?? ""]?[.rightAnchor] = rightAnchor
            
        } else {
            Utils.instance.constraints[self.accessibilityIdentifier ?? ""] = [.topAnchor : topAnchor]
            Utils.instance.constraints[self.accessibilityIdentifier ?? ""] = [.bottomAnchor : bottomAnchor]
            Utils.instance.constraints[self.accessibilityIdentifier ?? ""] = [.leftAnchor : leftAnchor]
            Utils.instance.constraints[self.accessibilityIdentifier ?? ""] = [.rightAnchor : rightAnchor]
            
        }
        
    }
    
    public func setConstraints(topToTopOf: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        let topAnchor = self.topAnchor.constraint(equalTo: topToTopOf.topAnchor)
        NSLayoutConstraint.activate([
            topAnchor
        ])
        let constraintsDic =  Utils.instance.constraints[self.accessibilityIdentifier ?? ""]
        if constraintsDic != nil {
            Utils.instance.constraints[self.accessibilityIdentifier ?? ""]?[.topAnchor] = topAnchor
        } else {
            Utils.instance.constraints[self.accessibilityIdentifier ?? ""] = [.topAnchor : topAnchor]
        }
        
    }
    
    public func setConstraints(bottomToBottomOf: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        let bottomAnchor = self.bottomAnchor.constraint(equalTo: bottomToBottomOf.bottomAnchor)
        NSLayoutConstraint.activate([
            bottomAnchor
        ])
        let constraintsDic =  Utils.instance.constraints[self.accessibilityIdentifier ?? ""]
        if constraintsDic != nil {
            Utils.instance.constraints[self.accessibilityIdentifier ?? ""]?[.bottomAnchor] = bottomAnchor
        } else {
            Utils.instance.constraints[self.accessibilityIdentifier ?? ""] = [.bottomAnchor : bottomAnchor]
        }
    }
    
    public  func setConstraints(leadingToLeadingOf: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        let leadingAnchor = self.leftAnchor.constraint(equalTo: leadingToLeadingOf.leftAnchor)
        NSLayoutConstraint.activate([
            leadingAnchor
        ])
        let constraintsDic =  Utils.instance.constraints[self.accessibilityIdentifier ?? ""]
        if constraintsDic != nil {
            Utils.instance.constraints[self.accessibilityIdentifier ?? ""]?[.leftAnchor] = leadingAnchor
        } else {
            Utils.instance.constraints[self.accessibilityIdentifier ?? ""] = [.leftAnchor : leadingAnchor]
        }    }
    
    public func setConstraints(trailingToTrailingOf: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        let rightAnchor =  self.rightAnchor.constraint(equalTo: trailingToTrailingOf.rightAnchor)
        NSLayoutConstraint.activate([
            rightAnchor
        ])
        let constraintsDic =  Utils.instance.constraints[self.accessibilityIdentifier ?? ""]
        if constraintsDic != nil {
            Utils.instance.constraints[self.accessibilityIdentifier ?? ""]?[.rightAnchor] = rightAnchor
        } else {
            Utils.instance.constraints[self.accessibilityIdentifier ?? ""] = [.rightAnchor : rightAnchor]
        }
    }
    
    public  func setConstraintsToSafeArea(parentView: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        let margins = parentView.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: margins.topAnchor),
            self.leftAnchor.constraint(equalTo: parentView.leftAnchor),
            self.rightAnchor.constraint(equalTo: parentView.rightAnchor),
            self.bottomAnchor.constraint(equalTo: margins.bottomAnchor)
        ])
        
    }
    public func setConstraintsToParentView(parentView: UIView) {
        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: parentView.topAnchor),
            self.leftAnchor.constraint(equalTo: parentView.leftAnchor),
            self.rightAnchor.constraint(equalTo: parentView.rightAnchor),
            self.bottomAnchor.constraint(equalTo: parentView.bottomAnchor)
        ])
        
    }
    
    public  func padding(top: Double) {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constraints = Utils.instance.constraints
        let selfConstraints = constraints[self.accessibilityIdentifier ?? ""] ?? [.leftAnchor : NSLayoutConstraint()]
        selfConstraints[.topAnchor]?.constant = top
    }
    public  func padding(bottom: Double) {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constraints = Utils.instance.constraints
        let selfConstraints = constraints[self.accessibilityIdentifier ?? ""] ?? [.leftAnchor : NSLayoutConstraint()]
        selfConstraints[.bottomAnchor]?.constant = bottom
    }
    public  func padding(left: Double) {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constraints = Utils.instance.constraints
        let selfConstraints = constraints[self.accessibilityIdentifier ?? ""] ?? [.leftAnchor : NSLayoutConstraint()]
        selfConstraints[.leftAnchor]?.constant = left
        
    }
    public  func padding(right: Double) {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constraints = Utils.instance.constraints
        let selfConstraints = constraints[self.accessibilityIdentifier ?? ""] ?? [.leftAnchor : NSLayoutConstraint()]
        selfConstraints[.rightAnchor]?.constant = right
    }
}






