// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeConfigurationRevisionInput: Equatable {
    /// The unique ID that Amazon MQ generates for the configuration.
    public let configurationId: String?
    /// The revision of the configuration.
    public let configurationRevision: String?

    public init (
        configurationId: String? = nil,
        configurationRevision: String? = nil
    )
    {
        self.configurationId = configurationId
        self.configurationRevision = configurationRevision
    }
}

extension DescribeConfigurationRevisionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeConfigurationRevisionInput(configurationId: \(String(describing: configurationId)), configurationRevision: \(String(describing: configurationRevision)))"}
}