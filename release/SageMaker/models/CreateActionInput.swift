// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateActionInput: Equatable {
    /// <p>The name of the action. Must be unique to your account in an AWS Region.</p>
    public let actionName: String?
    /// <p>The action type.</p>
    public let actionType: String?
    /// <p>The description of the action.</p>
    public let description: String?
    /// <p>Metadata properties of the tracking entity, trial, or trial component.</p>
    public let metadataProperties: MetadataProperties?
    /// <p>A list of properties to add to the action.</p>
    public let properties: [String:String]?
    /// <p>The source type, ID, and URI.</p>
    public let source: ActionSource?
    /// <p>The status of the action.</p>
    public let status: ActionStatus?
    /// <p>A list of tags to apply to the action.</p>
    public let tags: [Tag]?

    public init (
        actionName: String? = nil,
        actionType: String? = nil,
        description: String? = nil,
        metadataProperties: MetadataProperties? = nil,
        properties: [String:String]? = nil,
        source: ActionSource? = nil,
        status: ActionStatus? = nil,
        tags: [Tag]? = nil
    )
    {
        self.actionName = actionName
        self.actionType = actionType
        self.description = description
        self.metadataProperties = metadataProperties
        self.properties = properties
        self.source = source
        self.status = status
        self.tags = tags
    }
}

extension CreateActionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateActionInput(actionName: \(String(describing: actionName)), actionType: \(String(describing: actionType)), description: \(String(describing: description)), metadataProperties: \(String(describing: metadataProperties)), properties: \(String(describing: properties)), source: \(String(describing: source)), status: \(String(describing: status)), tags: \(String(describing: tags)))"}
}