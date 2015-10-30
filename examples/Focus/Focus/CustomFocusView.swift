//
//  CustomFocusView.swift
//  Focus
//
//  Created by Boris Bügling on 30/10/15.
//  Copyright © 2015 Boris Bügling. All rights reserved.
//

import UIKit

class CustomFocusView: UIView {
    override func canBecomeFocused() -> Bool {
        return true
    }

    override func didUpdateFocusInContext(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator) {
        coordinator.addCoordinatedAnimations({
            UIView.animateWithDuration(UIView.inheritedAnimationDuration(), animations: {
                if context.nextFocusedView == self {
                    self.backgroundColor = UIColor.redColor()
                }

                if context.previouslyFocusedView == self {
                    self.backgroundColor = UIColor.whiteColor()
                }
            })
        }, completion: nil)
    }
}
