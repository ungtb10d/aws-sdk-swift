// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct StartSimulationJobBatchInput: Equatable {
    /// <p>The batch policy.</p>
    public let batchPolicy: BatchPolicy?
    /// <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    ///          request.</p>
    public var clientRequestToken: String?
    /// <p>A list of simulation job requests to create in the batch.</p>
    public let createSimulationJobRequests: [SimulationJobRequest]?
    /// <p>A map that contains tag keys and tag values that are attached to the deployment job
    ///          batch.</p>
    public let tags: [String:String]?

    public init (
        batchPolicy: BatchPolicy? = nil,
        clientRequestToken: String? = nil,
        createSimulationJobRequests: [SimulationJobRequest]? = nil,
        tags: [String:String]? = nil
    )
    {
        self.batchPolicy = batchPolicy
        self.clientRequestToken = clientRequestToken
        self.createSimulationJobRequests = createSimulationJobRequests
        self.tags = tags
    }
}

extension StartSimulationJobBatchInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StartSimulationJobBatchInput(batchPolicy: \(String(describing: batchPolicy)), clientRequestToken: \(String(describing: clientRequestToken)), createSimulationJobRequests: \(String(describing: createSimulationJobRequests)), tags: \(String(describing: tags)))"}
}