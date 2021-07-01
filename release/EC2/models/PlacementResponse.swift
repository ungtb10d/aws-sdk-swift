// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes the placement of an instance.</p>
public struct PlacementResponse: Equatable {
    /// <p>The name of the placement group that the instance is in.</p>
    public let groupName: String?

    public init (
        groupName: String? = nil
    )
    {
        self.groupName = groupName
    }
}

extension PlacementResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PlacementResponse(groupName: \(String(describing: groupName)))"}
}