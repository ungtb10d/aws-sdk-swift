// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct AssociateMacSecKeyInput: Equatable {
    /// <p>The MAC Security (MACsec) CAK to associate with the dedicated connection.</p>
    ///          <p>You can create the CKN/CAK pair using an industry standard tool.</p>
    ///          <p> The valid values are 64 hexadecimal characters (0-9, A-E).</p>
    ///          <p>If you use this request parameter, you must use the <code>ckn</code> request parameter and not use the <code>secretARN</code> request parameter.</p>
    public let cak: String?
    /// <p>The MAC Security (MACsec) CKN to associate with the dedicated connection.</p>
    ///          <p>You can create the CKN/CAK pair using an industry standard tool.</p>
    ///          <p> The valid values are 64 hexadecimal characters (0-9, A-E).</p>
    ///          <p>If you use this request parameter, you must use the <code>cak</code> request parameter and not use the <code>secretARN</code> request parameter.</p>
    public let ckn: String?
    /// <p>The ID of the dedicated connection (dxcon-xxxx), or the ID of the LAG (dxlag-xxxx).</p>
    ///          <p>You can use <a>DescribeConnections</a> or <a>DescribeLags</a> to retrieve connection ID.</p>
    public let connectionId: String?
    /// <p>The Amazon Resource Name (ARN) of the MAC Security (MACsec) secret key to associate with the dedicated connection.</p>
    ///          <p>You can use <a>DescribeConnections</a> or <a>DescribeLags</a> to retrieve the MAC Security (MACsec) secret key.</p>
    ///          <p>If you use this request parameter, you do not use the <code>ckn</code> and <code>cak</code> request parameters.</p>
    public let secretARN: String?

    public init (
        cak: String? = nil,
        ckn: String? = nil,
        connectionId: String? = nil,
        secretARN: String? = nil
    )
    {
        self.cak = cak
        self.ckn = ckn
        self.connectionId = connectionId
        self.secretARN = secretARN
    }
}

extension AssociateMacSecKeyInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AssociateMacSecKeyInput(cak: \(String(describing: cak)), ckn: \(String(describing: ckn)), connectionId: \(String(describing: connectionId)), secretARN: \(String(describing: secretARN)))"}
}