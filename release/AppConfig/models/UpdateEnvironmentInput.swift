// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateEnvironmentInput: Equatable {
    /// <p>The application ID.</p>
    public let applicationId: String?
    /// <p>A description of the environment.</p>
    public let description: String?
    /// <p>The environment ID.</p>
    public let environmentId: String?
    /// <p>Amazon CloudWatch alarms to monitor during the deployment process.</p>
    public let monitors: [Monitor]?
    /// <p>The name of the environment.</p>
    public let name: String?

    public init (
        applicationId: String? = nil,
        description: String? = nil,
        environmentId: String? = nil,
        monitors: [Monitor]? = nil,
        name: String? = nil
    )
    {
        self.applicationId = applicationId
        self.description = description
        self.environmentId = environmentId
        self.monitors = monitors
        self.name = name
    }
}

extension UpdateEnvironmentInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateEnvironmentInput(applicationId: \(String(describing: applicationId)), description: \(String(describing: description)), environmentId: \(String(describing: environmentId)), monitors: \(String(describing: monitors)), name: \(String(describing: name)))"}
}