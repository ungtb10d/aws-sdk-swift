// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateUserProfileOutputResponse: Equatable {
    /// <p>The user profile Amazon Resource Name (ARN).</p>
    public let userProfileArn: String?

    public init (
        userProfileArn: String? = nil
    )
    {
        self.userProfileArn = userProfileArn
    }
}

extension CreateUserProfileOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateUserProfileOutputResponse(userProfileArn: \(String(describing: userProfileArn)))"}
}