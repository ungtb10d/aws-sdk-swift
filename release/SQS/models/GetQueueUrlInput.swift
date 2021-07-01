// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p></p>
public struct GetQueueUrlInput: Equatable {
    /// <p>The name of the queue whose URL must be fetched. Maximum 80 characters. Valid values: alphanumeric characters, hyphens (<code>-</code>), and underscores (<code>_</code>).</p>
    ///          <p>Queue URLs and names are case-sensitive.</p>
    public let queueName: String?
    /// <p>The AWS account ID of the account that created the queue.</p>
    public let queueOwnerAWSAccountId: String?

    public init (
        queueName: String? = nil,
        queueOwnerAWSAccountId: String? = nil
    )
    {
        self.queueName = queueName
        self.queueOwnerAWSAccountId = queueOwnerAWSAccountId
    }
}

extension GetQueueUrlInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetQueueUrlInput(queueName: \(String(describing: queueName)), queueOwnerAWSAccountId: \(String(describing: queueOwnerAWSAccountId)))"}
}