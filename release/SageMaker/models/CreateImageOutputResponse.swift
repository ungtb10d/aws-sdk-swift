// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateImageOutputResponse: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the image.</p>
    public let imageArn: String?

    public init (
        imageArn: String? = nil
    )
    {
        self.imageArn = imageArn
    }
}

extension CreateImageOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateImageOutputResponse(imageArn: \(String(describing: imageArn)))"}
}