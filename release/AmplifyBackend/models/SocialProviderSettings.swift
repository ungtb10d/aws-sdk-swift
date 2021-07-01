// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The settings for using the social identity providers for access to your Amplify app.</p>
public struct SocialProviderSettings: Equatable {
    /// <p>Describes third-party social federation configurations for allowing your app users to sign in using OAuth.</p>
    public let facebook: BackendAuthSocialProviderConfig?
    /// <p>Describes third-party social federation configurations for allowing your app users to sign in using OAuth.</p>
    public let google: BackendAuthSocialProviderConfig?
    /// <p>Describes third-party social federation configurations for allowing your app users to sign in using OAuth.</p>
    public let loginWithAmazon: BackendAuthSocialProviderConfig?

    public init (
        facebook: BackendAuthSocialProviderConfig? = nil,
        google: BackendAuthSocialProviderConfig? = nil,
        loginWithAmazon: BackendAuthSocialProviderConfig? = nil
    )
    {
        self.facebook = facebook
        self.google = google
        self.loginWithAmazon = loginWithAmazon
    }
}

extension SocialProviderSettings: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SocialProviderSettings(facebook: \(String(describing: facebook)), google: \(String(describing: google)), loginWithAmazon: \(String(describing: loginWithAmazon)))"}
}