// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The output for the ListThingTypes operation.</p>
public struct ListThingTypesOutputResponse: Equatable {
    /// <p>The token for the next set of results. Will not be returned if operation has returned all results.</p>
    public let nextToken: String?
    /// <p>The thing types.</p>
    public let thingTypes: [ThingTypeDefinition]?

    public init (
        nextToken: String? = nil,
        thingTypes: [ThingTypeDefinition]? = nil
    )
    {
        self.nextToken = nextToken
        self.thingTypes = thingTypes
    }
}

extension ListThingTypesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListThingTypesOutputResponse(nextToken: \(String(describing: nextToken)), thingTypes: \(String(describing: thingTypes)))"}
}