// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeFeatureTransformationInput: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the feature transformation to describe.</p>
    public let featureTransformationArn: String?

    public init (
        featureTransformationArn: String? = nil
    )
    {
        self.featureTransformationArn = featureTransformationArn
    }
}

extension DescribeFeatureTransformationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeFeatureTransformationInput(featureTransformationArn: \(String(describing: featureTransformationArn)))"}
}