// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateQueueNameInput: Equatable {
    /// <p>The description of the queue.</p>
    public let description: String?
    /// <p>The identifier of the Amazon Connect instance.</p>
    public let instanceId: String?
    /// <p>The name of the queue.</p>
    public let name: String?
    /// <p>The identifier for the queue.</p>
    public let queueId: String?

    public init (
        description: String? = nil,
        instanceId: String? = nil,
        name: String? = nil,
        queueId: String? = nil
    )
    {
        self.description = description
        self.instanceId = instanceId
        self.name = name
        self.queueId = queueId
    }
}

extension UpdateQueueNameInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateQueueNameInput(description: \(String(describing: description)), instanceId: \(String(describing: instanceId)), name: \(String(describing: name)), queueId: \(String(describing: queueId)))"}
}