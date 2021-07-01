// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateProjectInput: Equatable {
    /// <p>A unique case-sensitive identifier that you can provide to ensure the idempotency of the request. Don't reuse this client token if a new idempotent request is required.</p>
    public var clientToken: String?
    /// <p>The ID of the portal in which to create the project.</p>
    public let portalId: String?
    /// <p>A description for the project.</p>
    public let projectDescription: String?
    /// <p>A friendly name for the project.</p>
    public let projectName: String?
    /// <p>A list of key-value pairs that contain metadata for the project. For more information, see
    ///         <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/tag-resources.html">Tagging your AWS IoT SiteWise
    ///         resources</a> in the <i>AWS IoT SiteWise User Guide</i>.</p>
    public let tags: [String:String]?

    public init (
        clientToken: String? = nil,
        portalId: String? = nil,
        projectDescription: String? = nil,
        projectName: String? = nil,
        tags: [String:String]? = nil
    )
    {
        self.clientToken = clientToken
        self.portalId = portalId
        self.projectDescription = projectDescription
        self.projectName = projectName
        self.tags = tags
    }
}

extension CreateProjectInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateProjectInput(clientToken: \(String(describing: clientToken)), portalId: \(String(describing: portalId)), projectDescription: \(String(describing: projectDescription)), projectName: \(String(describing: projectName)), tags: \(String(describing: tags)))"}
}