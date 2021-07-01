// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct AddUploadBufferOutputResponse: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the gateway. Use the <a>ListGateways</a>
    ///          operation to return a list of gateways for your account and AWS Region.</p>
    public let gatewayARN: String?

    public init (
        gatewayARN: String? = nil
    )
    {
        self.gatewayARN = gatewayARN
    }
}

extension AddUploadBufferOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AddUploadBufferOutputResponse(gatewayARN: \(String(describing: gatewayARN)))"}
}