// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreatePlacementGroupOutputResponse: Equatable {
    /// <p>Describes a placement group.</p>
    public let placementGroup: PlacementGroup?

    public init (
        placementGroup: PlacementGroup? = nil
    )
    {
        self.placementGroup = placementGroup
    }
}

extension CreatePlacementGroupOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreatePlacementGroupOutputResponse(placementGroup: \(String(describing: placementGroup)))"}
}