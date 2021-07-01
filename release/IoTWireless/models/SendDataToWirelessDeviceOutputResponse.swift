// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct SendDataToWirelessDeviceOutputResponse: Equatable {
    /// <p>The ID of the message sent to the wireless device.</p>
    public let messageId: String?

    public init (
        messageId: String? = nil
    )
    {
        self.messageId = messageId
    }
}

extension SendDataToWirelessDeviceOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SendDataToWirelessDeviceOutputResponse(messageId: \(String(describing: messageId)))"}
}