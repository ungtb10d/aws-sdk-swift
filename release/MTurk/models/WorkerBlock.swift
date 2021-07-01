// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p> The WorkerBlock data structure represents a Worker who has
///             been blocked. It has two elements: the WorkerId and the Reason for
///             the block.
///         </p>
public struct WorkerBlock: Equatable {
    /// <p> A message explaining the reason the Worker was blocked.
    ///         </p>
    public let reason: String?
    /// <p> The ID of the Worker who accepted the HIT.</p>
    public let workerId: String?

    public init (
        reason: String? = nil,
        workerId: String? = nil
    )
    {
        self.reason = reason
        self.workerId = workerId
    }
}

extension WorkerBlock: CustomDebugStringConvertible {
    public var debugDescription: String {
        "WorkerBlock(reason: \(String(describing: reason)), workerId: \(String(describing: workerId)))"}
}