// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateProjectOutputResponse: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the created project.</p>
    public let arn: String?
    /// <p>A user- or system-generated token that identifies the entity that requested project
    ///       creation.</p>
    public let clientRequestToken: String?
    /// <p>The ID of the project.</p>
    public let id: String?
    /// <p>Reserved for future use.</p>
    public let projectTemplateId: String?

    public init (
        arn: String? = nil,
        clientRequestToken: String? = nil,
        id: String? = nil,
        projectTemplateId: String? = nil
    )
    {
        self.arn = arn
        self.clientRequestToken = clientRequestToken
        self.id = id
        self.projectTemplateId = projectTemplateId
    }
}

extension CreateProjectOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateProjectOutputResponse(arn: \(String(describing: arn)), clientRequestToken: \(String(describing: clientRequestToken)), id: \(String(describing: id)), projectTemplateId: \(String(describing: projectTemplateId)))"}
}