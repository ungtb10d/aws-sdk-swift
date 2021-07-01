// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteApplicationVpcConfigurationOutputResponse: Equatable {
    /// <p>The ARN of the Kinesis Data Analytics application.</p>
    public let applicationARN: String?
    /// <p>The updated version ID of the application.</p>
    public let applicationVersionId: Int?

    public init (
        applicationARN: String? = nil,
        applicationVersionId: Int? = nil
    )
    {
        self.applicationARN = applicationARN
        self.applicationVersionId = applicationVersionId
    }
}

extension DeleteApplicationVpcConfigurationOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteApplicationVpcConfigurationOutputResponse(applicationARN: \(String(describing: applicationARN)), applicationVersionId: \(String(describing: applicationVersionId)))"}
}