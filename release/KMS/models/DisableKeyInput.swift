// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DisableKeyInput: Equatable {
    /// <p>A unique identifier for the customer master key (CMK).</p>
    ///          <p>Specify the key ID or the Amazon Resource Name (ARN) of the CMK.</p>
    ///          <p>For example:</p>
    ///          <ul>
    ///             <li>
    ///                <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                <p>Key ARN: <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>
    ///                </p>
    ///             </li>
    ///          </ul>
    ///          <p>To get the key ID and key ARN for a CMK, use <a>ListKeys</a> or <a>DescribeKey</a>.</p>
    public let keyId: String?

    public init (
        keyId: String? = nil
    )
    {
        self.keyId = keyId
    }
}

extension DisableKeyInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DisableKeyInput(keyId: \(String(describing: keyId)))"}
}