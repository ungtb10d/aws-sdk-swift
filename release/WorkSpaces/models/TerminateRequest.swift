// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the information used to terminate a WorkSpace.</p>
public struct TerminateRequest: Equatable {
    /// <p>The identifier of the WorkSpace.</p>
    public let workspaceId: String?

    public init (
        workspaceId: String? = nil
    )
    {
        self.workspaceId = workspaceId
    }
}

extension TerminateRequest: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TerminateRequest(workspaceId: \(String(describing: workspaceId)))"}
}