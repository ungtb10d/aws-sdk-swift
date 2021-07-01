// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateDistributionOutputResponse: Equatable {
    /// <p>An array of objects that describe the result of the action, such as the status of the
    ///       request, the timestamp of the request, and the resources affected by the request.</p>
    public let operation: Operation?

    public init (
        operation: Operation? = nil
    )
    {
        self.operation = operation
    }
}

extension UpdateDistributionOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateDistributionOutputResponse(operation: \(String(describing: operation)))"}
}