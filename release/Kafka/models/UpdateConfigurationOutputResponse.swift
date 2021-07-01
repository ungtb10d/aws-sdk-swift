// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateConfigurationOutputResponse: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the configuration.</p>
    public let arn: String?
    /// <p>Latest revision of the configuration.</p>
    public let latestRevision: ConfigurationRevision?

    public init (
        arn: String? = nil,
        latestRevision: ConfigurationRevision? = nil
    )
    {
        self.arn = arn
        self.latestRevision = latestRevision
    }
}

extension UpdateConfigurationOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateConfigurationOutputResponse(arn: \(String(describing: arn)), latestRevision: \(String(describing: latestRevision)))"}
}