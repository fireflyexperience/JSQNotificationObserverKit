import Foundation

public typealias SignalObserver = NotificationObserver<Any?, AnyObject>

public struct JSQNotify {
    public static func Signal(name: Swift.String) {
        Notification<Any?, AnyObject>(name: name).post(nil)
    }
    
    public static func String(name: Swift.String, message: Swift.String) {
        let notification = Notification<Swift.String, AnyObject>(name: name)
        notification.post(message)
    }
}

extension NotificationObserver
{
    public class func Signal(
        name: Swift.String,
        queue: NSOperationQueue? = nil,
        center: NSNotificationCenter = .defaultCenter(),
        handler: NotificationHandler) -> SignalObserver
    {
        let notification = Notification<Any?, AnyObject>(name: name)
        return NotificationObserver<Any?, AnyObject>(notification: notification, queue: queue, center: center, handler: handler)
    }
    
    public class func String(
        name: Swift.String,
        queue: NSOperationQueue? = nil,
        center: NSNotificationCenter = .defaultCenter(),
        handler: NotificationHandler) -> NotificationObserver<Swift.String, AnyObject>
    {
        let notification = Notification<Swift.String, AnyObject>(name: name)
        return NotificationObserver<Swift.String, AnyObject>(notification: notification, queue: queue, center: center, handler: handler)
    }
}