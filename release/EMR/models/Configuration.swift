// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <note>
///             <p>Amazon EMR releases 4.x or later.</p>
///          </note>
///          <p>An optional configuration specification to be used when provisioning cluster instances,
///          which can include configurations for applications and software bundled with Amazon EMR. A
///          configuration consists of a classification, properties, and optional nested configurations.
///          A classification refers to an application-specific configuration file. Properties are the
///          settings you want to change in that file. For more information, see <a href="https://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-configure-apps.html">Configuring
///             Applications</a>.</p>
public struct Configuration: Equatable {
    /// <p>The classification within a configuration.</p>
    public let classification: String?
    /// <p>A list of additional configurations to apply within a configuration object.</p>
    public let configurations: [Configuration]?
    /// <p>A set of properties specified within a configuration classification.</p>
    public let properties: [String:String]?

    public init (
        classification: String? = nil,
        configurations: [Configuration]? = nil,
        properties: [String:String]? = nil
    )
    {
        self.classification = classification
        self.configurations = configurations
        self.properties = properties
    }
}

extension Configuration: CustomDebugStringConvertible {
    public var debugDescription: String {
        "Configuration(classification: \(String(describing: classification)), configurations: \(String(describing: configurations)), properties: \(String(describing: properties)))"}
}