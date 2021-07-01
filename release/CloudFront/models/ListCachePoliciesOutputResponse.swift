// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListCachePoliciesOutputResponse: Equatable {
    /// <p>A list of cache policies.</p>
    public let cachePolicyList: CachePolicyList?

    public init (
        cachePolicyList: CachePolicyList? = nil
    )
    {
        self.cachePolicyList = cachePolicyList
    }
}

extension ListCachePoliciesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListCachePoliciesOutputResponse(cachePolicyList: \(String(describing: cachePolicyList)))"}
}