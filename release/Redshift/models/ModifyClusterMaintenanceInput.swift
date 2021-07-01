// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct ModifyClusterMaintenanceInput: Equatable {
    /// <p>A unique identifier for the cluster.</p>
    public let clusterIdentifier: String?
    /// <p>A boolean indicating whether to enable the deferred maintenance window. </p>
    public let deferMaintenance: Bool?
    /// <p>An integer indicating the duration of the maintenance window in days. If you specify a
    ///             duration, you can't specify an end time. The duration must be 45 days or less.</p>
    public let deferMaintenanceDuration: Int?
    /// <p>A timestamp indicating end time for the deferred maintenance window. If you specify an
    ///             end time, you can't specify a duration.</p>
    public let deferMaintenanceEndTime: Date?
    /// <p>A unique identifier for the deferred maintenance window.</p>
    public let deferMaintenanceIdentifier: String?
    /// <p>A timestamp indicating the start time for the deferred maintenance window.</p>
    public let deferMaintenanceStartTime: Date?

    public init (
        clusterIdentifier: String? = nil,
        deferMaintenance: Bool? = nil,
        deferMaintenanceDuration: Int? = nil,
        deferMaintenanceEndTime: Date? = nil,
        deferMaintenanceIdentifier: String? = nil,
        deferMaintenanceStartTime: Date? = nil
    )
    {
        self.clusterIdentifier = clusterIdentifier
        self.deferMaintenance = deferMaintenance
        self.deferMaintenanceDuration = deferMaintenanceDuration
        self.deferMaintenanceEndTime = deferMaintenanceEndTime
        self.deferMaintenanceIdentifier = deferMaintenanceIdentifier
        self.deferMaintenanceStartTime = deferMaintenanceStartTime
    }
}

extension ModifyClusterMaintenanceInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ModifyClusterMaintenanceInput(clusterIdentifier: \(String(describing: clusterIdentifier)), deferMaintenance: \(String(describing: deferMaintenance)), deferMaintenanceDuration: \(String(describing: deferMaintenanceDuration)), deferMaintenanceEndTime: \(String(describing: deferMaintenanceEndTime)), deferMaintenanceIdentifier: \(String(describing: deferMaintenanceIdentifier)), deferMaintenanceStartTime: \(String(describing: deferMaintenanceStartTime)))"}
}