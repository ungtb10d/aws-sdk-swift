// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateApnsSandboxChannelOutputResponse: Equatable {
    /// <p>Provides information about the status and settings of the APNs (Apple Push Notification service) sandbox channel for an application.</p>
    public let aPNSSandboxChannelResponse: APNSSandboxChannelResponse?

    public init (
        aPNSSandboxChannelResponse: APNSSandboxChannelResponse? = nil
    )
    {
        self.aPNSSandboxChannelResponse = aPNSSandboxChannelResponse
    }
}

extension UpdateApnsSandboxChannelOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateApnsSandboxChannelOutputResponse(aPNSSandboxChannelResponse: \(String(describing: aPNSSandboxChannelResponse)))"}
}