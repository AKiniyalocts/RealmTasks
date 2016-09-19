/*************************************************************************
 *
 * REALM CONFIDENTIAL
 * __________________
 *
 *  [2016] Realm Inc
 *  All Rights Reserved.
 *
 * NOTICE:  All information contained herein is, and remains
 * the property of Realm Incorporated and its suppliers,
 * if any.  The intellectual and technical concepts contained
 * herein are proprietary to Realm Incorporated
 * and its suppliers and may be covered by U.S. and Foreign Patents,
 * patents in process, and are protected by trade secret or copyright law.
 * Dissemination of this information or reproduction of this material
 * is strictly forbidden unless prior written permission is obtained
 * from Realm Incorporated.
 *
 **************************************************************************/

import Cocoa

extension NSView {

    static func animateWithDuration(duration: NSTimeInterval, timingFunction: CAMediaTimingFunction = .lineral(), animations: () -> Void, completion: (() -> Void)? = nil) {
        NSAnimationContext.runAnimationGroup({ context in
            context.allowsImplicitAnimation = true

            context.duration = duration
            context.timingFunction = timingFunction

            animations()
        }, completionHandler: completion)
    }

}

extension CAMediaTimingFunction {

    static func lineral() -> CAMediaTimingFunction {
        return CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
    }

    static func easeIn() -> CAMediaTimingFunction {
        return CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseIn)
    }

    static func easeOut() -> CAMediaTimingFunction {
        return CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
    }

    static func easeInEaseOut() -> CAMediaTimingFunction {
        return CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
    }

}
