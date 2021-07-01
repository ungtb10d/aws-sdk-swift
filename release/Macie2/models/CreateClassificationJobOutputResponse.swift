// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateClassificationJobOutputResponse: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the job.</p>
    public let jobArn: String?
    /// <p>The unique identifier for the job.</p>
    public let jobId: String?

    public init (
        jobArn: String? = nil,
        jobId: String? = nil
    )
    {
        self.jobArn = jobArn
        self.jobId = jobId
    }
}

extension CreateClassificationJobOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateClassificationJobOutputResponse(jobArn: \(String(describing: jobArn)), jobId: \(String(describing: jobId)))"}
}