// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeBackupPolicyInput: Equatable {
    /// <p>Specifies which EFS file system to retrieve the <code>BackupPolicy</code> for.</p>
    public let fileSystemId: String?

    public init (
        fileSystemId: String? = nil
    )
    {
        self.fileSystemId = fileSystemId
    }
}

extension DescribeBackupPolicyInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeBackupPolicyInput(fileSystemId: \(String(describing: fileSystemId)))"}
}