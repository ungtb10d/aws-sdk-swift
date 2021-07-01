// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DisassociateS3ResourcesOutputResponse: Equatable {
    /// <p>S3 resources that couldn't be removed from being monitored and classified by Amazon
    ///       Macie Classic. An error code and an error message are provided for each failed item.
    ///     </p>
    public let failedS3Resources: [FailedS3Resource]?

    public init (
        failedS3Resources: [FailedS3Resource]? = nil
    )
    {
        self.failedS3Resources = failedS3Resources
    }
}

extension DisassociateS3ResourcesOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DisassociateS3ResourcesOutputResponse(failedS3Resources: \(String(describing: failedS3Resources)))"}
}