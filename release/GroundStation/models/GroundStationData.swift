// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about the ground station data.</p>
public struct GroundStationData: Equatable {
    /// <p>UUID of a ground station.</p>
    public let groundStationId: String?
    /// <p>Name of a ground station.</p>
    public let groundStationName: String?
    /// <p>Ground station Region.</p>
    public let region: String?

    public init (
        groundStationId: String? = nil,
        groundStationName: String? = nil,
        region: String? = nil
    )
    {
        self.groundStationId = groundStationId
        self.groundStationName = groundStationName
        self.region = region
    }
}

extension GroundStationData: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GroundStationData(groundStationId: \(String(describing: groundStationId)), groundStationName: \(String(describing: groundStationName)), region: \(String(describing: region)))"}
}