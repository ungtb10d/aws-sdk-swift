// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetObjectLockConfigurationOutputResponse: Equatable {
    /// <p>The specified bucket's Object Lock configuration.</p>
    public let objectLockConfiguration: ObjectLockConfiguration?

    public init (
        objectLockConfiguration: ObjectLockConfiguration? = nil
    )
    {
        self.objectLockConfiguration = objectLockConfiguration
    }
}

extension GetObjectLockConfigurationOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetObjectLockConfigurationOutputResponse(objectLockConfiguration: \(String(describing: objectLockConfiguration)))"}
}