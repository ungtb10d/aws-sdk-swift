// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeIAMPolicyAssignmentOutputResponse: Equatable {
    /// <p>Information describing the IAM policy assignment.</p>
    public let iAMPolicyAssignment: IAMPolicyAssignment?
    /// <p>The AWS request ID for this operation.</p>
    public let requestId: String?
    /// <p>The HTTP status of the request.</p>
    public let status: Int

    public init (
        iAMPolicyAssignment: IAMPolicyAssignment? = nil,
        requestId: String? = nil,
        status: Int = 0
    )
    {
        self.iAMPolicyAssignment = iAMPolicyAssignment
        self.requestId = requestId
        self.status = status
    }
}

extension DescribeIAMPolicyAssignmentOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeIAMPolicyAssignmentOutputResponse(iAMPolicyAssignment: \(String(describing: iAMPolicyAssignment)), requestId: \(String(describing: requestId)), status: \(String(describing: status)))"}
}