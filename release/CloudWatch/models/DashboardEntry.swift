// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Represents a specific dashboard.</p>
public struct DashboardEntry: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the dashboard.</p>
    public let dashboardArn: String?
    /// <p>The name of the dashboard.</p>
    public let dashboardName: String?
    /// <p>The time stamp of when the dashboard was last modified, either by an API call or
    /// 			through the console. This number is expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.</p>
    public let lastModified: Date?
    /// <p>The size of the dashboard, in bytes.</p>
    public let size: Int

    public init (
        dashboardArn: String? = nil,
        dashboardName: String? = nil,
        lastModified: Date? = nil,
        size: Int = 0
    )
    {
        self.dashboardArn = dashboardArn
        self.dashboardName = dashboardName
        self.lastModified = lastModified
        self.size = size
    }
}

extension DashboardEntry: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DashboardEntry(dashboardArn: \(String(describing: dashboardArn)), dashboardName: \(String(describing: dashboardName)), lastModified: \(String(describing: lastModified)), size: \(String(describing: size)))"}
}