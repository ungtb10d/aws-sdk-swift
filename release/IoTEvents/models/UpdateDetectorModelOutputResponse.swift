// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateDetectorModelOutputResponse: Equatable {
    /// <p>Information about how the detector model is configured.</p>
    public let detectorModelConfiguration: DetectorModelConfiguration?

    public init (
        detectorModelConfiguration: DetectorModelConfiguration? = nil
    )
    {
        self.detectorModelConfiguration = detectorModelConfiguration
    }
}

extension UpdateDetectorModelOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateDetectorModelOutputResponse(detectorModelConfiguration: \(String(describing: detectorModelConfiguration)))"}
}