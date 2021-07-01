// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the Amazon Resource Name (ARN) of the resource to publish to, such as an S3
///       bucket, and the ARN of the KMS key to use to encrypt published findings.</p>
public struct DestinationProperties: Equatable {
    /// <p>The ARN of the resource to publish to.</p>
    public let destinationArn: String?
    /// <p>The ARN of the KMS key to use for encryption.</p>
    public let kmsKeyArn: String?

    public init (
        destinationArn: String? = nil,
        kmsKeyArn: String? = nil
    )
    {
        self.destinationArn = destinationArn
        self.kmsKeyArn = kmsKeyArn
    }
}

extension DestinationProperties: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DestinationProperties(destinationArn: \(String(describing: destinationArn)), kmsKeyArn: \(String(describing: kmsKeyArn)))"}
}