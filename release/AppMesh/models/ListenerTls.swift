// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>An object that represents the Transport Layer Security (TLS) properties for a listener.</p>
public struct ListenerTls: Equatable {
    /// <p>A reference to an object that represents a listener's Transport Layer Security (TLS) certificate.</p>
    public let certificate: ListenerTlsCertificate?
    /// <p>Specify one of the following modes.</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <b/>STRICT – Listener only accepts connections with TLS
    ///                enabled. </p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <b/>PERMISSIVE – Listener accepts connections with or
    ///                without TLS enabled.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <b/>DISABLED – Listener only accepts connections without
    ///                TLS. </p>
    ///             </li>
    ///          </ul>
    public let mode: ListenerTlsMode?
    /// <p>A reference to an object that represents a listener's Transport Layer Security (TLS) validation context.</p>
    public let validation: ListenerTlsValidationContext?

    public init (
        certificate: ListenerTlsCertificate? = nil,
        mode: ListenerTlsMode? = nil,
        validation: ListenerTlsValidationContext? = nil
    )
    {
        self.certificate = certificate
        self.mode = mode
        self.validation = validation
    }
}

extension ListenerTls: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListenerTls(certificate: \(String(describing: certificate)), mode: \(String(describing: mode)), validation: \(String(describing: validation)))"}
}