// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribePatchPropertiesOutputResponse: Equatable {
    /// <p>The token for the next set of items to return. (You use this token in the next call.)</p>
    public let nextToken: String?
    /// <p>A list of the properties for patches matching the filter request parameters.</p>
    public let properties: [[String:String]]?

    public init (
        nextToken: String? = nil,
        properties: [[String:String]]? = nil
    )
    {
        self.nextToken = nextToken
        self.properties = properties
    }
}

extension DescribePatchPropertiesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribePatchPropertiesOutputResponse(nextToken: \(String(describing: nextToken)), properties: \(String(describing: properties)))"}
}