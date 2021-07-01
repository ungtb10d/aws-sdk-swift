// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeMaintenanceWindowTargetsOutputResponse: Equatable {
    /// <p>The token to use when requesting the next set of items. If there are no additional items to
    ///    return, the string is empty.</p>
    public let nextToken: String?
    /// <p>Information about the targets in the maintenance window.</p>
    public let targets: [MaintenanceWindowTarget]?

    public init (
        nextToken: String? = nil,
        targets: [MaintenanceWindowTarget]? = nil
    )
    {
        self.nextToken = nextToken
        self.targets = targets
    }
}

extension DescribeMaintenanceWindowTargetsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeMaintenanceWindowTargetsOutputResponse(nextToken: \(String(describing: nextToken)), targets: \(String(describing: targets)))"}
}