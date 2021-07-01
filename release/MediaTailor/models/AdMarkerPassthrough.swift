// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>For HLS, when set to true, MediaTailor passes through EXT-X-CUE-IN, EXT-X-CUE-OUT, and EXT-X-SPLICEPOINT-SCTE35 ad markers from the origin manifest to the MediaTailor personalized manifest.</p> <p>No logic is applied to these ad markers. For example, if EXT-X-CUE-OUT has a value of 60, but no ads are filled for that ad break, MediaTailor will not set the value to 0.</p>
public struct AdMarkerPassthrough: Equatable {
    /// <p>Enables ad marker passthrough for your configuration.</p>
    public let enabled: Bool

    public init (
        enabled: Bool = false
    )
    {
        self.enabled = enabled
    }
}

extension AdMarkerPassthrough: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AdMarkerPassthrough(enabled: \(String(describing: enabled)))"}
}