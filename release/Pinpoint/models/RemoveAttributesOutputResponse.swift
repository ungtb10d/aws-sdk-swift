// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct RemoveAttributesOutputResponse: Equatable {
    /// <p>Provides information about the type and the names of attributes that were removed from all the endpoints that are associated with an application.</p>
    public let attributesResource: AttributesResource?

    public init (
        attributesResource: AttributesResource? = nil
    )
    {
        self.attributesResource = attributesResource
    }
}

extension RemoveAttributesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RemoveAttributesOutputResponse(attributesResource: \(String(describing: attributesResource)))"}
}