// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateQueueStatusInput: Equatable {
    /// <p>The identifier of the Amazon Connect instance.</p>
    public let instanceId: String?
    /// <p>The identifier for the queue.</p>
    public let queueId: String?
    /// <p>The status of the queue.</p>
    public let status: QueueStatus?

    public init (
        instanceId: String? = nil,
        queueId: String? = nil,
        status: QueueStatus? = nil
    )
    {
        self.instanceId = instanceId
        self.queueId = queueId
        self.status = status
    }
}

extension UpdateQueueStatusInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateQueueStatusInput(instanceId: \(String(describing: instanceId)), queueId: \(String(describing: queueId)), status: \(String(describing: status)))"}
}