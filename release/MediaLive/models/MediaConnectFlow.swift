// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// The settings for a MediaConnect Flow.
public struct MediaConnectFlow: Equatable {
    /// The unique ARN of the MediaConnect Flow being used as a source.
    public let flowArn: String?

    public init (
        flowArn: String? = nil
    )
    {
        self.flowArn = flowArn
    }
}

extension MediaConnectFlow: CustomDebugStringConvertible {
    public var debugDescription: String {
        "MediaConnectFlow(flowArn: \(String(describing: flowArn)))"}
}