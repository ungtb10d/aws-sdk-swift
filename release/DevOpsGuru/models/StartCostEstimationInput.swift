// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct StartCostEstimationInput: Equatable {
    /// <p>The idempotency token used to identify each cost estimate request.</p>
    public var clientToken: String?
    /// <p>The collection of AWS resources used to create a monthly DevOps Guru cost estimate.</p>
    public let resourceCollection: CostEstimationResourceCollectionFilter?

    public init (
        clientToken: String? = nil,
        resourceCollection: CostEstimationResourceCollectionFilter? = nil
    )
    {
        self.clientToken = clientToken
        self.resourceCollection = resourceCollection
    }
}

extension StartCostEstimationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StartCostEstimationInput(clientToken: \(String(describing: clientToken)), resourceCollection: \(String(describing: resourceCollection)))"}
}