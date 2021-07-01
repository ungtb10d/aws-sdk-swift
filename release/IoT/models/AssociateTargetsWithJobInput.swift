// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct AssociateTargetsWithJobInput: Equatable {
    /// <p>An optional comment string describing why the job was associated with the targets.</p>
    public let comment: String?
    /// <p>The unique identifier you assigned to this job when it was created.</p>
    public let jobId: String?
    /// <p>The namespace used to indicate that a job is a customer-managed job.</p>
    ///         <p>When you specify a value for this parameter, AWS IoT Core sends jobs notifications to MQTT topics that
    ///             contain the value in the following format.</p>
    ///         <p>
    ///             <code>$aws/things/<i>THING_NAME</i>/jobs/<i>JOB_ID</i>/notify-namespace-<i>NAMESPACE_ID</i>/</code>
    ///          </p>
    ///         <note>
    ///             <p>The <code>namespaceId</code> feature is in public preview.</p>
    ///          </note>
    public let namespaceId: String?
    /// <p>A list of thing group ARNs that define the targets of the job.</p>
    public let targets: [String]?

    public init (
        comment: String? = nil,
        jobId: String? = nil,
        namespaceId: String? = nil,
        targets: [String]? = nil
    )
    {
        self.comment = comment
        self.jobId = jobId
        self.namespaceId = namespaceId
        self.targets = targets
    }
}

extension AssociateTargetsWithJobInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AssociateTargetsWithJobInput(comment: \(String(describing: comment)), jobId: \(String(describing: jobId)), namespaceId: \(String(describing: namespaceId)), targets: \(String(describing: targets)))"}
}