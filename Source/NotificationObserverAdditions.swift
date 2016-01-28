import Foundation

public struct JSQNotify {
    public static func Signal(name: Swift.String) -> Notification<Any?, AnyObject> {
        return Notification<Any?, AnyObject>(name: name)
    }
    
    public static func String(name: Swift.String) -> Notification<Swift.String, AnyObject> {
        return Notification<Swift.String, AnyObject>(name: name)
    }
}

extension NotificationObserver
{
    public class func Signal(
        name: Swift.String,
        queue: NSOperationQueue? = nil,
        center: NSNotificationCenter = .defaultCenter(),
        handler: NotificationHandler) -> NotificationObserver<Any?, AnyObject>
    {
        let notification = JSQNotify.Signal(name)
        return NotificationObserver<Any?, AnyObject>(notification: notification, queue: queue, center: center, handler: handler)
    }
    
    public class func String(
        name: Swift.String,
        queue: NSOperationQueue? = nil,
        center: NSNotificationCenter = .defaultCenter(),
        handler: NotificationHandler) -> NotificationObserver<Swift.String, AnyObject>
    {
        let notification = JSQNotify.String(name)
        return NotificationObserver<Swift.String, AnyObject>(notification: notification, queue: queue, center: center, handler: handler)
    }
}