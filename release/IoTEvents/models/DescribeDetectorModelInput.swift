// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeDetectorModelInput: Equatable {
    /// <p>The name of the detector model.</p>
    public let detectorModelName: String?
    /// <p>The version of the detector model.</p>
    public let detectorModelVersion: String?

    public init (
        detectorModelName: String? = nil,
        detectorModelVersion: String? = nil
    )
    {
        self.detectorModelName = detectorModelName
        self.detectorModelVersion = detectorModelVersion
    }
}

extension DescribeDetectorModelInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeDetectorModelInput(detectorModelName: \(String(describing: detectorModelName)), detectorModelVersion: \(String(describing: detectorModelVersion)))"}
}