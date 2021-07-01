// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListSizeConstraintSetsOutputResponse: Equatable {
    /// <p>If you have more <code>SizeConstraintSet</code> objects than the number that you specified for <code>Limit</code> in the request,
    /// 			the response includes a <code>NextMarker</code> value. To list more <code>SizeConstraintSet</code> objects, submit another
    /// 			<code>ListSizeConstraintSets</code> request, and specify the <code>NextMarker</code> value from the response in the
    /// 			<code>NextMarker</code> value in the next request.</p>
    public let nextMarker: String?
    /// <p>An array of <a>SizeConstraintSetSummary</a> objects.</p>
    public let sizeConstraintSets: [SizeConstraintSetSummary]?

    public init (
        nextMarker: String? = nil,
        sizeConstraintSets: [SizeConstraintSetSummary]? = nil
    )
    {
        self.nextMarker = nextMarker
        self.sizeConstraintSets = sizeConstraintSets
    }
}

extension ListSizeConstraintSetsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListSizeConstraintSetsOutputResponse(nextMarker: \(String(describing: nextMarker)), sizeConstraintSets: \(String(describing: sizeConstraintSets)))"}
}