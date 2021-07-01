// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A request to obtain information about a configuration set.</p>
public struct GetConfigurationSetInput: Equatable {
    /// <p>The name of the configuration set that you want to obtain more information
    ///             about.</p>
    public let configurationSetName: String?

    public init (
        configurationSetName: String? = nil
    )
    {
        self.configurationSetName = configurationSetName
    }
}

extension GetConfigurationSetInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetConfigurationSetInput(configurationSetName: \(String(describing: configurationSetName)))"}
}