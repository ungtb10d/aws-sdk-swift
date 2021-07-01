// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetApnsVoipChannelInput: Equatable {
    /// <p>The unique identifier for the application. This identifier is displayed as the <b>Project ID</b> on the Amazon Pinpoint console.</p>
    public let applicationId: String?

    public init (
        applicationId: String? = nil
    )
    {
        self.applicationId = applicationId
    }
}

extension GetApnsVoipChannelInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetApnsVoipChannelInput(applicationId: \(String(describing: applicationId)))"}
}