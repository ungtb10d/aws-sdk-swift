// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateAccountCustomizationInput: Equatable {
    /// <p>The QuickSight customizations you're adding in the current AWS Region. You can add
    ///             these to an AWS account and a QuickSight namespace. </p>
    ///         <p>For example, you can add a default theme by setting <code>AccountCustomization</code>
    ///             to the midnight theme: <code>"AccountCustomization": { "DefaultTheme":
    ///                 "arn:aws:quicksight::aws:theme/MIDNIGHT" }</code>. Or, you can add a custom theme by
    ///             specifying <code>"AccountCustomization": { "DefaultTheme":
    ///                 "arn:aws:quicksight:us-west-2:111122223333:theme/bdb844d0-0fe9-4d9d-b520-0fe602d93639"
    ///                 }</code>. </p>
    public let accountCustomization: AccountCustomization?
    /// <p>The ID for the AWS account that you want to customize QuickSight for.</p>
    public let awsAccountId: String?
    /// <p>The QuickSight namespace that you want to add customizations to.</p>
    public let namespace: String?
    /// <p>A list of the tags that you want to attach to this resource.</p>
    public let tags: [Tag]?

    public init (
        accountCustomization: AccountCustomization? = nil,
        awsAccountId: String? = nil,
        namespace: String? = nil,
        tags: [Tag]? = nil
    )
    {
        self.accountCustomization = accountCustomization
        self.awsAccountId = awsAccountId
        self.namespace = namespace
        self.tags = tags
    }
}

extension CreateAccountCustomizationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateAccountCustomizationInput(accountCustomization: \(String(describing: accountCustomization)), awsAccountId: \(String(describing: awsAccountId)), namespace: \(String(describing: namespace)), tags: \(String(describing: tags)))"}
}