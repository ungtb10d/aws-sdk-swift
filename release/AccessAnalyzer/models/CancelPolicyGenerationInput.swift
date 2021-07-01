// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CancelPolicyGenerationInput: Equatable {
    /// <p>The <code>JobId</code> that is returned by the <code>StartPolicyGeneration</code>
    ///          operation. The <code>JobId</code> can be used with <code>GetGeneratedPolicy</code> to
    ///          retrieve the generated policies or used with <code>CancelPolicyGeneration</code> to cancel
    ///          the policy generation request.</p>
    public let jobId: String?

    public init (
        jobId: String? = nil
    )
    {
        self.jobId = jobId
    }
}

extension CancelPolicyGenerationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CancelPolicyGenerationInput(jobId: \(String(describing: jobId)))"}
}