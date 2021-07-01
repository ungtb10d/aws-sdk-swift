// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The request to create an invalidation.</p>
public struct CreateInvalidationInput: Equatable {
    /// <p>The distribution's id.</p>
    public let distributionId: String?
    /// <p>The batch information for the invalidation.</p>
    public let invalidationBatch: InvalidationBatch?

    public init (
        distributionId: String? = nil,
        invalidationBatch: InvalidationBatch? = nil
    )
    {
        self.distributionId = distributionId
        self.invalidationBatch = invalidationBatch
    }
}

extension CreateInvalidationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateInvalidationInput(distributionId: \(String(describing: distributionId)), invalidationBatch: \(String(describing: invalidationBatch)))"}
}