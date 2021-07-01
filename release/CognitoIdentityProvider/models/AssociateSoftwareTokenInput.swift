// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct AssociateSoftwareTokenInput: Equatable {
    /// <p>The access token.</p>
    public let accessToken: String?
    /// <p>The session which should be passed both ways in challenge-response calls to the
    ///             service. This allows authentication of the user as part of the MFA setup process.</p>
    public let session: String?

    public init (
        accessToken: String? = nil,
        session: String? = nil
    )
    {
        self.accessToken = accessToken
        self.session = session
    }
}

extension AssociateSoftwareTokenInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AssociateSoftwareTokenInput(accessToken: \(String(describing: accessToken)), session: \(String(describing: session)))"}
}