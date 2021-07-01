// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Contains the OAuth request parameters to use for the connection.</p>
public struct UpdateConnectionOAuthRequestParameters: Equatable {
    /// <p>The URL to the authorization endpoint when OAuth is specified as the authorization
    ///       type.</p>
    public let authorizationEndpoint: String?
    /// <p>A <code>UpdateConnectionOAuthClientRequestParameters</code> object that contains the
    ///       client parameters to use for the connection when OAuth is specified as the authorization
    ///       type.</p>
    public let clientParameters: UpdateConnectionOAuthClientRequestParameters?
    /// <p>The method used to connect to the HTTP endpoint.</p>
    public let httpMethod: ConnectionOAuthHttpMethod?
    /// <p>The additional HTTP parameters used for the OAuth authorization request.</p>
    public let oAuthHttpParameters: ConnectionHttpParameters?

    public init (
        authorizationEndpoint: String? = nil,
        clientParameters: UpdateConnectionOAuthClientRequestParameters? = nil,
        httpMethod: ConnectionOAuthHttpMethod? = nil,
        oAuthHttpParameters: ConnectionHttpParameters? = nil
    )
    {
        self.authorizationEndpoint = authorizationEndpoint
        self.clientParameters = clientParameters
        self.httpMethod = httpMethod
        self.oAuthHttpParameters = oAuthHttpParameters
    }
}

extension UpdateConnectionOAuthRequestParameters: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateConnectionOAuthRequestParameters(authorizationEndpoint: \(String(describing: authorizationEndpoint)), clientParameters: \(String(describing: clientParameters)), httpMethod: \(String(describing: httpMethod)), oAuthHttpParameters: \(String(describing: oAuthHttpParameters)))"}
}