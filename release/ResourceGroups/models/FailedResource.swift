// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A resource that failed to be added to or removed from a group.</p>
public struct FailedResource: Equatable {
    /// <p>The error code associated with the failure.</p>
    public let errorCode: String?
    /// <p>The error message text associated with the failure.</p>
    public let errorMessage: String?
    /// <p>The ARN of the resource that failed to be added or removed.</p>
    public let resourceArn: String?

    public init (
        errorCode: String? = nil,
        errorMessage: String? = nil,
        resourceArn: String? = nil
    )
    {
        self.errorCode = errorCode
        self.errorMessage = errorMessage
        self.resourceArn = resourceArn
    }
}

extension FailedResource: CustomDebugStringConvertible {
    public var debugDescription: String {
        "FailedResource(errorCode: \(String(describing: errorCode)), errorMessage: \(String(describing: errorMessage)), resourceArn: \(String(describing: resourceArn)))"}
}