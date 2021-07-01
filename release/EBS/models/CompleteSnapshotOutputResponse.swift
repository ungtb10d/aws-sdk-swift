// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CompleteSnapshotOutputResponse: Equatable {
    /// <p>The status of the snapshot.</p>
    public let status: Status?

    public init (
        status: Status? = nil
    )
    {
        self.status = status
    }
}

extension CompleteSnapshotOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CompleteSnapshotOutputResponse(status: \(String(describing: status)))"}
}