// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetStaticIpOutputResponse: Equatable {
    /// <p>An array of key-value pairs containing information about the requested static IP.</p>
    public let staticIp: StaticIp?

    public init (
        staticIp: StaticIp? = nil
    )
    {
        self.staticIp = staticIp
    }
}

extension GetStaticIpOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetStaticIpOutputResponse(staticIp: \(String(describing: staticIp)))"}
}