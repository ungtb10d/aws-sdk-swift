// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Summary information about a platform version.</p>
public struct PlatformSummary: Equatable {
    /// <p>The operating system used by the platform version.</p>
    public let operatingSystemName: String?
    /// <p>The version of the operating system used by the platform version.</p>
    public let operatingSystemVersion: String?
    /// <p>The ARN of the platform version.</p>
    public let platformArn: String?
    /// <p>The state of the platform version's branch in its lifecycle.</p>
    ///          <p>Possible values: <code>beta</code> | <code>supported</code> | <code>deprecated</code> |
    ///         <code>retired</code>
    ///          </p>
    public let platformBranchLifecycleState: String?
    /// <p>The platform branch to which the platform version belongs.</p>
    public let platformBranchName: String?
    /// <p>The category of platform version.</p>
    public let platformCategory: String?
    /// <p>The state of the platform version in its lifecycle.</p>
    ///          <p>Possible values: <code>recommended</code> | empty</p>
    ///          <p>If an empty value is returned, the platform version is supported but isn't the recommended
    ///     one for its branch.</p>
    public let platformLifecycleState: String?
    /// <p>The AWS account ID of the person who created the platform version.</p>
    public let platformOwner: String?
    /// <p>The status of the platform version. You can create an environment from the platform
    ///       version once it is ready.</p>
    public let platformStatus: PlatformStatus?
    /// <p>The version string of the platform version.</p>
    public let platformVersion: String?
    /// <p>The additions associated with the platform version.</p>
    public let supportedAddonList: [String]?
    /// <p>The tiers in which the platform version runs.</p>
    public let supportedTierList: [String]?

    public init (
        operatingSystemName: String? = nil,
        operatingSystemVersion: String? = nil,
        platformArn: String? = nil,
        platformBranchLifecycleState: String? = nil,
        platformBranchName: String? = nil,
        platformCategory: String? = nil,
        platformLifecycleState: String? = nil,
        platformOwner: String? = nil,
        platformStatus: PlatformStatus? = nil,
        platformVersion: String? = nil,
        supportedAddonList: [String]? = nil,
        supportedTierList: [String]? = nil
    )
    {
        self.operatingSystemName = operatingSystemName
        self.operatingSystemVersion = operatingSystemVersion
        self.platformArn = platformArn
        self.platformBranchLifecycleState = platformBranchLifecycleState
        self.platformBranchName = platformBranchName
        self.platformCategory = platformCategory
        self.platformLifecycleState = platformLifecycleState
        self.platformOwner = platformOwner
        self.platformStatus = platformStatus
        self.platformVersion = platformVersion
        self.supportedAddonList = supportedAddonList
        self.supportedTierList = supportedTierList
    }
}

extension PlatformSummary: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PlatformSummary(operatingSystemName: \(String(describing: operatingSystemName)), operatingSystemVersion: \(String(describing: operatingSystemVersion)), platformArn: \(String(describing: platformArn)), platformBranchLifecycleState: \(String(describing: platformBranchLifecycleState)), platformBranchName: \(String(describing: platformBranchName)), platformCategory: \(String(describing: platformCategory)), platformLifecycleState: \(String(describing: platformLifecycleState)), platformOwner: \(String(describing: platformOwner)), platformStatus: \(String(describing: platformStatus)), platformVersion: \(String(describing: platformVersion)), supportedAddonList: \(String(describing: supportedAddonList)), supportedTierList: \(String(describing: supportedTierList)))"}
}