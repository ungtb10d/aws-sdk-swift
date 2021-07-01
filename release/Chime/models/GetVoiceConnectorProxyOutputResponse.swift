// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetVoiceConnectorProxyOutputResponse: Equatable {
    /// <p>The proxy configuration details.</p>
    public let proxy: Proxy?

    public init (
        proxy: Proxy? = nil
    )
    {
        self.proxy = proxy
    }
}

extension GetVoiceConnectorProxyOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetVoiceConnectorProxyOutputResponse(proxy: \(String(describing: proxy)))"}
}