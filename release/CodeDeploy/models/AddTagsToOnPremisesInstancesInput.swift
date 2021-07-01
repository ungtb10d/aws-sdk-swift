// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the input of, and adds tags to, an on-premises instance operation.</p>
public struct AddTagsToOnPremisesInstancesInput: Equatable {
    /// <p>The names of the on-premises instances to which to add tags.</p>
    public let instanceNames: [String]?
    /// <p>The tag key-value pairs to add to the on-premises instances.</p>
    ///         <p>Keys and values are both required. Keys cannot be null or empty strings. Value-only
    ///             tags are not allowed.</p>
    public let tags: [Tag]?

    public init (
        instanceNames: [String]? = nil,
        tags: [Tag]? = nil
    )
    {
        self.instanceNames = instanceNames
        self.tags = tags
    }
}

extension AddTagsToOnPremisesInstancesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AddTagsToOnPremisesInstancesInput(instanceNames: \(String(describing: instanceNames)), tags: \(String(describing: tags)))"}
}