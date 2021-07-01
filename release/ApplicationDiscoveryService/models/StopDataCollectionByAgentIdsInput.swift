// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct StopDataCollectionByAgentIdsInput: Equatable {
    /// <p>The IDs of the agents or connectors from which to stop collecting data.</p>
    public let agentIds: [String]?

    public init (
        agentIds: [String]? = nil
    )
    {
        self.agentIds = agentIds
    }
}

extension StopDataCollectionByAgentIdsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StopDataCollectionByAgentIdsInput(agentIds: \(String(describing: agentIds)))"}
}