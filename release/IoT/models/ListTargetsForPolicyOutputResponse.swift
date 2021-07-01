// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListTargetsForPolicyOutputResponse: Equatable {
    /// <p>A marker used to get the next set of results.</p>
    public let nextMarker: String?
    /// <p>The policy targets.</p>
    public let targets: [String]?

    public init (
        nextMarker: String? = nil,
        targets: [String]? = nil
    )
    {
        self.nextMarker = nextMarker
        self.targets = targets
    }
}

extension ListTargetsForPolicyOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListTargetsForPolicyOutputResponse(nextMarker: \(String(describing: nextMarker)), targets: \(String(describing: targets)))"}
}