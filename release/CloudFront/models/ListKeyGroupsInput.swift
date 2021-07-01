// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListKeyGroupsInput: Equatable {
    /// <p>Use this field when paginating results to indicate where to begin in your list of key
    /// 			groups. The response includes key groups in the list that occur after the marker. To get
    /// 			the next page of the list, set this field’s value to the value of
    /// 			<code>NextMarker</code> from the current page’s response.</p>
    public let marker: String?
    /// <p>The maximum number of key groups that you want in the response.</p>
    public let maxItems: Int?

    public init (
        marker: String? = nil,
        maxItems: Int? = nil
    )
    {
        self.marker = marker
        self.maxItems = maxItems
    }
}

extension ListKeyGroupsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListKeyGroupsInput(marker: \(String(describing: marker)), maxItems: \(String(describing: maxItems)))"}
}