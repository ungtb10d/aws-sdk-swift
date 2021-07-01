// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes Challenge-Handshake Authentication Protocol (CHAP) information that supports
///          authentication between your gateway and iSCSI initiators.</p>
public struct ChapInfo: Equatable {
    /// <p>The iSCSI initiator that connects to the target.</p>
    public let initiatorName: String?
    /// <p>The secret key that the initiator (for example, the Windows client) must provide to
    ///          participate in mutual CHAP with the target.</p>
    public let secretToAuthenticateInitiator: String?
    /// <p>The secret key that the target must provide to participate in mutual CHAP with the
    ///          initiator (e.g., Windows client).</p>
    public let secretToAuthenticateTarget: String?
    /// <p>The Amazon Resource Name (ARN) of the volume.</p>
    ///
    ///          <p>Valid Values: 50 to 500 lowercase letters, numbers, periods (.), and hyphens (-).</p>
    public let targetARN: String?

    public init (
        initiatorName: String? = nil,
        secretToAuthenticateInitiator: String? = nil,
        secretToAuthenticateTarget: String? = nil,
        targetARN: String? = nil
    )
    {
        self.initiatorName = initiatorName
        self.secretToAuthenticateInitiator = secretToAuthenticateInitiator
        self.secretToAuthenticateTarget = secretToAuthenticateTarget
        self.targetARN = targetARN
    }
}

extension ChapInfo: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ChapInfo(initiatorName: \(String(describing: initiatorName)), secretToAuthenticateInitiator: \(String(describing: secretToAuthenticateInitiator)), secretToAuthenticateTarget: \(String(describing: secretToAuthenticateTarget)), targetARN: \(String(describing: targetARN)))"}
}