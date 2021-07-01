// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Input for Update Workload Share</p>
public struct UpdateWorkloadShareInput: Equatable {
    /// <p>Permission granted on a workload share.</p>
    public let permissionType: PermissionType?
    /// <p>The ID associated with the workload share.</p>
    public let shareId: String?
    /// <p>The ID assigned to the workload. This ID is unique within an AWS Region.</p>
    public let workloadId: String?

    public init (
        permissionType: PermissionType? = nil,
        shareId: String? = nil,
        workloadId: String? = nil
    )
    {
        self.permissionType = permissionType
        self.shareId = shareId
        self.workloadId = workloadId
    }
}

extension UpdateWorkloadShareInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateWorkloadShareInput(permissionType: \(String(describing: permissionType)), shareId: \(String(describing: shareId)), workloadId: \(String(describing: workloadId)))"}
}