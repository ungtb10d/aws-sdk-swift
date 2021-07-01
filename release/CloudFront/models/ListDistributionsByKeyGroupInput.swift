// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListDistributionsByKeyGroupInput: Equatable {
    /// <p>The ID of the key group whose associated distribution IDs you are listing.</p>
    public let keyGroupId: String?
    /// <p>Use this field when paginating results to indicate where to begin in your list of
    /// 			distribution IDs. The response includes distribution IDs in the list that occur after
    /// 			the marker. To get the next page of the list, set this field’s value to the value of
    /// 			<code>NextMarker</code> from the current page’s response.</p>
    public let marker: String?
    /// <p>The maximum number of distribution IDs that you want in the response.</p>
    public let maxItems: Int?

    public init (
        keyGroupId: String? = nil,
        marker: String? = nil,
        maxItems: Int? = nil
    )
    {
        self.keyGroupId = keyGroupId
        self.marker = marker
        self.maxItems = maxItems
    }
}

extension ListDistributionsByKeyGroupInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListDistributionsByKeyGroupInput(keyGroupId: \(String(describing: keyGroupId)), marker: \(String(describing: marker)), maxItems: \(String(describing: maxItems)))"}
}