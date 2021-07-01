// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DisassociateMacSecKeyInput: Equatable {
    /// <p>The ID of the dedicated connection (dxcon-xxxx), or the ID of the LAG (dxlag-xxxx).</p>
    ///          <p>You can use <a>DescribeConnections</a> or <a>DescribeLags</a> to retrieve connection ID.</p>
    public let connectionId: String?
    /// <p>The Amazon Resource Name (ARN) of the MAC Security (MACsec) secret key.</p>
    ///          <p>You can use <a>DescribeConnections</a> to retrieve the ARN of the MAC Security (MACsec) secret key.</p>
    public let secretARN: String?

    public init (
        connectionId: String? = nil,
        secretARN: String? = nil
    )
    {
        self.connectionId = connectionId
        self.secretARN = secretARN
    }
}

extension DisassociateMacSecKeyInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DisassociateMacSecKeyInput(connectionId: \(String(describing: connectionId)), secretARN: \(String(describing: secretARN)))"}
}