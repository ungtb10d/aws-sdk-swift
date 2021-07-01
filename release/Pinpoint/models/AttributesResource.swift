// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Provides information about the type and the names of attributes that were removed from all the endpoints that are associated with an application.</p>
public struct AttributesResource: Equatable {
    /// <p>The unique identifier for the application.</p>
    public let applicationId: String?
    /// <p>The type of attribute or attributes that were removed from the endpoints. Valid values are:</p> <ul><li><p>endpoint-custom-attributes - Custom attributes that describe endpoints.</p></li> <li><p>endpoint-metric-attributes - Custom metrics that your app reports to Amazon Pinpoint for endpoints.</p></li> <li><p>endpoint-user-attributes - Custom attributes that describe users.</p></li></ul>
    public let attributeType: String?
    /// <p>An array that specifies the names of the attributes that were removed from the endpoints.</p>
    public let attributes: [String]?

    public init (
        applicationId: String? = nil,
        attributeType: String? = nil,
        attributes: [String]? = nil
    )
    {
        self.applicationId = applicationId
        self.attributeType = attributeType
        self.attributes = attributes
    }
}

extension AttributesResource: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AttributesResource(applicationId: \(String(describing: applicationId)), attributeType: \(String(describing: attributeType)), attributes: \(String(describing: attributes)))"}
}