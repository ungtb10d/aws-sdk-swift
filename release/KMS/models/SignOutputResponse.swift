// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct SignOutputResponse: Equatable {
    /// <p>The Amazon Resource Name (<a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id-key-ARN">key ARN</a>) of the asymmetric CMK that was used to sign the
    ///       message.</p>
    public let keyId: String?
    /// <p>The cryptographic signature that was generated for the message. </p>
    ///          <ul>
    ///             <li>
    ///                <p>When used with the supported RSA signing algorithms, the encoding of this value is
    ///           defined by <a href="https://tools.ietf.org/html/rfc8017">PKCS #1 in RFC
    ///           8017</a>.</p>
    ///             </li>
    ///             <li>
    ///                <p>When used with the <code>ECDSA_SHA_256</code>, <code>ECDSA_SHA_384</code>, or
    ///             <code>ECDSA_SHA_512</code> signing algorithms, this value is a DER-encoded object as
    ///           defined by ANS X9.62–2005 and <a href="https://tools.ietf.org/html/rfc3279#section-2.2.3">RFC 3279 Section 2.2.3</a>.
    ///           This is the most commonly used signature format and is appropriate for most uses.
    ///           </p>
    ///             </li>
    ///          </ul>
    ///          <p>When you use the HTTP API or the AWS CLI, the value is Base64-encoded. Otherwise, it is not Base64-encoded.</p>
    public let signature: Data?
    /// <p>The signing algorithm that was used to sign the message.</p>
    public let signingAlgorithm: SigningAlgorithmSpec?

    public init (
        keyId: String? = nil,
        signature: Data? = nil,
        signingAlgorithm: SigningAlgorithmSpec? = nil
    )
    {
        self.keyId = keyId
        self.signature = signature
        self.signingAlgorithm = signingAlgorithm
    }
}

extension SignOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SignOutputResponse(keyId: \(String(describing: keyId)), signature: \(String(describing: signature)), signingAlgorithm: \(String(describing: signingAlgorithm)))"}
}