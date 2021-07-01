// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The request to create a new distribution with tags. </p>
public struct CreateDistributionWithTagsInput: Equatable {
    /// <p>The distribution's configuration information. </p>
    public let distributionConfigWithTags: DistributionConfigWithTags?

    public init (
        distributionConfigWithTags: DistributionConfigWithTags? = nil
    )
    {
        self.distributionConfigWithTags = distributionConfigWithTags
    }
}

extension CreateDistributionWithTagsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateDistributionWithTagsInput(distributionConfigWithTags: \(String(describing: distributionConfigWithTags)))"}
}