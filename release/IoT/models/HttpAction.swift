// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Send data to an HTTPS endpoint.</p>
public struct HttpAction: Equatable {
    /// <p>The authentication method to use when sending data to an HTTPS endpoint.</p>
    public let auth: HttpAuthorization?
    /// <p>The URL to which AWS IoT sends a confirmation message. The value of the confirmation URL
    ///          must be a prefix of the endpoint URL. If you do not specify a confirmation URL AWS IoT uses
    ///          the endpoint URL as the confirmation URL. If you use substitution templates in the
    ///          confirmationUrl, you must create and enable topic rule destinations that match each
    ///          possible value of the substitution template before traffic is allowed to your endpoint
    ///          URL.</p>
    public let confirmationUrl: String?
    /// <p>The HTTP headers to send with the message data.</p>
    public let headers: [HttpActionHeader]?
    /// <p>The endpoint URL. If substitution templates are used in the URL, you must also specify a
    ///             <code>confirmationUrl</code>. If this is a new destination, a new
    ///             <code>TopicRuleDestination</code> is created if possible.</p>
    public let url: String?

    public init (
        auth: HttpAuthorization? = nil,
        confirmationUrl: String? = nil,
        headers: [HttpActionHeader]? = nil,
        url: String? = nil
    )
    {
        self.auth = auth
        self.confirmationUrl = confirmationUrl
        self.headers = headers
        self.url = url
    }
}

extension HttpAction: CustomDebugStringConvertible {
    public var debugDescription: String {
        "HttpAction(auth: \(String(describing: auth)), confirmationUrl: \(String(describing: confirmationUrl)), headers: \(String(describing: headers)), url: \(String(describing: url)))"}
}