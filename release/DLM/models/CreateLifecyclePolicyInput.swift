// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateLifecyclePolicyInput: Equatable {
    /// <p>A description of the lifecycle policy. The characters ^[0-9A-Za-z _-]+$ are
    /// 			supported.</p>
    public let description: String?
    /// <p>The Amazon Resource Name (ARN) of the IAM role used to run the operations specified by
    /// 			the lifecycle policy.</p>
    public let executionRoleArn: String?
    /// <p>The configuration details of the lifecycle policy.</p>
    public let policyDetails: PolicyDetails?
    /// <p>The desired activation state of the lifecycle policy after creation.</p>
    public let state: SettablePolicyStateValues?
    /// <p>The tags to apply to the lifecycle policy during creation.</p>
    public let tags: [String:String]?

    public init (
        description: String? = nil,
        executionRoleArn: String? = nil,
        policyDetails: PolicyDetails? = nil,
        state: SettablePolicyStateValues? = nil,
        tags: [String:String]? = nil
    )
    {
        self.description = description
        self.executionRoleArn = executionRoleArn
        self.policyDetails = policyDetails
        self.state = state
        self.tags = tags
    }
}

extension CreateLifecyclePolicyInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateLifecyclePolicyInput(description: \(String(describing: description)), executionRoleArn: \(String(describing: executionRoleArn)), policyDetails: \(String(describing: policyDetails)), state: \(String(describing: state)), tags: \(String(describing: tags)))"}
}