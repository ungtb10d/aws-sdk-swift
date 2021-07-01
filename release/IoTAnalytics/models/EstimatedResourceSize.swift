// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>The estimated size of the resource.</p>
public struct EstimatedResourceSize: Equatable {
    /// <p>The time when the estimate of the size of the resource was made.</p>
    public let estimatedOn: Date?
    /// <p>The estimated size of the resource, in bytes.</p>
    public let estimatedSizeInBytes: Double?

    public init (
        estimatedOn: Date? = nil,
        estimatedSizeInBytes: Double? = nil
    )
    {
        self.estimatedOn = estimatedOn
        self.estimatedSizeInBytes = estimatedSizeInBytes
    }
}

extension EstimatedResourceSize: CustomDebugStringConvertible {
    public var debugDescription: String {
        "EstimatedResourceSize(estimatedOn: \(String(describing: estimatedOn)), estimatedSizeInBytes: \(String(describing: estimatedSizeInBytes)))"}
}