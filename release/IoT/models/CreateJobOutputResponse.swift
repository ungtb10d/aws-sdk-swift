// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateJobOutputResponse: Equatable {
    /// <p>The job description.</p>
    public let description: String?
    /// <p>The job ARN.</p>
    public let jobArn: String?
    /// <p>The unique identifier you assigned to this job.</p>
    public let jobId: String?

    public init (
        description: String? = nil,
        jobArn: String? = nil,
        jobId: String? = nil
    )
    {
        self.description = description
        self.jobArn = jobArn
        self.jobId = jobId
    }
}

extension CreateJobOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateJobOutputResponse(description: \(String(describing: description)), jobArn: \(String(describing: jobArn)), jobId: \(String(describing: jobId)))"}
}