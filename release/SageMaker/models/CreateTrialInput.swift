// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateTrialInput: Equatable {
    /// <p>The name of the trial as displayed. The name doesn't need to be unique. If
    ///         <code>DisplayName</code> isn't specified, <code>TrialName</code> is displayed.</p>
    public let displayName: String?
    /// <p>The name of the experiment to associate the trial with.</p>
    public let experimentName: String?
    /// <p>Metadata properties of the tracking entity, trial, or trial component.</p>
    public let metadataProperties: MetadataProperties?
    /// <p>A list of tags to associate with the trial. You can use <a>Search</a> API to
    ///       search on the tags.</p>
    public let tags: [Tag]?
    /// <p>The name of the trial. The name must be unique in your AWS account and is not
    ///       case-sensitive.</p>
    public let trialName: String?

    public init (
        displayName: String? = nil,
        experimentName: String? = nil,
        metadataProperties: MetadataProperties? = nil,
        tags: [Tag]? = nil,
        trialName: String? = nil
    )
    {
        self.displayName = displayName
        self.experimentName = experimentName
        self.metadataProperties = metadataProperties
        self.tags = tags
        self.trialName = trialName
    }
}

extension CreateTrialInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateTrialInput(displayName: \(String(describing: displayName)), experimentName: \(String(describing: experimentName)), metadataProperties: \(String(describing: metadataProperties)), tags: \(String(describing: tags)), trialName: \(String(describing: trialName)))"}
}