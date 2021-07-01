// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ApplyPendingMaintenanceActionOutputResponse: Equatable {
    /// <p>Describes the pending maintenance actions for a resource.</p>
    public let resourcePendingMaintenanceActions: ResourcePendingMaintenanceActions?

    public init (
        resourcePendingMaintenanceActions: ResourcePendingMaintenanceActions? = nil
    )
    {
        self.resourcePendingMaintenanceActions = resourcePendingMaintenanceActions
    }
}

extension ApplyPendingMaintenanceActionOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ApplyPendingMaintenanceActionOutputResponse(resourcePendingMaintenanceActions: \(String(describing: resourcePendingMaintenanceActions)))"}
}