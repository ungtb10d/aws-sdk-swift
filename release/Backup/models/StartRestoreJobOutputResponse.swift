// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct StartRestoreJobOutputResponse: Equatable {
    /// <p>Uniquely identifies the job that restores a recovery point.</p>
    public let restoreJobId: String?

    public init (
        restoreJobId: String? = nil
    )
    {
        self.restoreJobId = restoreJobId
    }
}

extension StartRestoreJobOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StartRestoreJobOutputResponse(restoreJobId: \(String(describing: restoreJobId)))"}
}