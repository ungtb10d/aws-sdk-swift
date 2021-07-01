// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateEndpointOutputResponse: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the endpoint.</p>
    public let endpointArn: String?

    public init (
        endpointArn: String? = nil
    )
    {
        self.endpointArn = endpointArn
    }
}

extension CreateEndpointOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateEndpointOutputResponse(endpointArn: \(String(describing: endpointArn)))"}
}