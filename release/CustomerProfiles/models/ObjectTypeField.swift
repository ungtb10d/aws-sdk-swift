// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents a field in a ProfileObjectType.</p>
public struct ObjectTypeField: Equatable {
    /// <p>The content type of the field. Used for determining equality when searching.</p>
    public let contentType: FieldContentType?
    /// <p>A field of a ProfileObject. For example: _source.FirstName, where “_source” is a
    ///          ProfileObjectType of a Zendesk user and “FirstName” is a field in that ObjectType.</p>
    public let source: String?
    /// <p>The location of the data in the standard ProfileObject model. For example:
    ///          _profile.Address.PostalCode.</p>
    public let target: String?

    public init (
        contentType: FieldContentType? = nil,
        source: String? = nil,
        target: String? = nil
    )
    {
        self.contentType = contentType
        self.source = source
        self.target = target
    }
}

extension ObjectTypeField: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ObjectTypeField(contentType: \(String(describing: contentType)), source: \(String(describing: source)), target: \(String(describing: target)))"}
}