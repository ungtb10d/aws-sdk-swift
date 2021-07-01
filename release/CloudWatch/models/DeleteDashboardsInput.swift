// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteDashboardsInput: Equatable {
    /// <p>The dashboards to be deleted. This parameter is required.</p>
    public let dashboardNames: [String]?

    public init (
        dashboardNames: [String]? = nil
    )
    {
        self.dashboardNames = dashboardNames
    }
}

extension DeleteDashboardsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteDashboardsInput(dashboardNames: \(String(describing: dashboardNames)))"}
}