// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListCustomRoutingAcceleratorsOutputResponse: Equatable {
    /// <p>The list of custom routing accelerators for a customer account.</p>
    public let accelerators: [CustomRoutingAccelerator]?
    /// <p>The token for the next set of results. You receive this token from a previous call.</p>
    public let nextToken: String?

    public init (
        accelerators: [CustomRoutingAccelerator]? = nil,
        nextToken: String? = nil
    )
    {
        self.accelerators = accelerators
        self.nextToken = nextToken
    }
}

extension ListCustomRoutingAcceleratorsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListCustomRoutingAcceleratorsOutputResponse(accelerators: \(String(describing: accelerators)), nextToken: \(String(describing: nextToken)))"}
}