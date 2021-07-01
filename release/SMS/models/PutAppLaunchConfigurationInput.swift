// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct PutAppLaunchConfigurationInput: Equatable {
    /// <p>The ID of the application.</p>
    public let appId: String?
    /// <p>Indicates whether the application is configured to launch automatically after replication is complete.</p>
    public let autoLaunch: Bool?
    /// <p>The name of service role in the customer's account that AWS CloudFormation uses to launch the
    ///             application.</p>
    public let roleName: String?
    /// <p>Information about the launch configurations for server groups in the application.</p>
    public let serverGroupLaunchConfigurations: [ServerGroupLaunchConfiguration]?

    public init (
        appId: String? = nil,
        autoLaunch: Bool? = nil,
        roleName: String? = nil,
        serverGroupLaunchConfigurations: [ServerGroupLaunchConfiguration]? = nil
    )
    {
        self.appId = appId
        self.autoLaunch = autoLaunch
        self.roleName = roleName
        self.serverGroupLaunchConfigurations = serverGroupLaunchConfigurations
    }
}

extension PutAppLaunchConfigurationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PutAppLaunchConfigurationInput(appId: \(String(describing: appId)), autoLaunch: \(String(describing: autoLaunch)), roleName: \(String(describing: roleName)), serverGroupLaunchConfigurations: \(String(describing: serverGroupLaunchConfigurations)))"}
}