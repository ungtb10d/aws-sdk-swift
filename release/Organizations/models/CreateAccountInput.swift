// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateAccountInput: Equatable {
    /// <p>The friendly name of the member account.</p>
    public let accountName: String?
    /// <p>The email address of the owner to assign to the new member account. This email address
    ///             must not already be associated with another AWS account. You must use a valid email
    ///             address to complete account creation. You can't access the root user of the account or
    ///             remove an account that was created with an invalid email address.</p>
    public let email: String?
    /// <p>If set to <code>ALLOW</code>, the new account enables IAM users to access account
    ///             billing information <i>if</i> they have the required permissions. If set
    ///             to <code>DENY</code>, only the root user of the new account can access account billing
    ///             information. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate">Activating
    ///                 Access to the Billing and Cost Management Console</a> in the
    ///                 <i>AWS Billing and Cost Management User Guide</i>.</p>
    ///         <p>If you don't specify this parameter, the value defaults to <code>ALLOW</code>, and
    ///             IAM users and roles with the required permissions can access billing information for
    ///             the new account.</p>
    public let iamUserAccessToBilling: IAMUserAccessToBilling?
    /// <p>(Optional)</p>
    ///         <p>The name of an IAM role that AWS Organizations automatically preconfigures in the new member
    ///             account. This role trusts the management account, allowing users in the management
    ///             account to assume the role, as permitted by the management account administrator. The
    ///             role has administrator permissions in the new member account.</p>
    ///         <p>If you don't specify this parameter, the role name defaults to
    ///                 <code>OrganizationAccountAccessRole</code>.</p>
    ///         <p>For more information about how to use this role to access the member account, see the
    ///             following links:</p>
    ///         <ul>
    ///             <li>
    ///                 <p>
    ///                   <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html#orgs_manage_accounts_create-cross-account-role">Accessing and Administering the Member Accounts in Your
    ///                         Organization</a> in the <i>AWS Organizations User Guide</i>
    ///                </p>
    ///             </li>
    ///             <li>
    ///                 <p>Steps 2 and 3 in <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html">Tutorial:
    ///                         Delegate Access Across AWS Accounts Using IAM Roles</a> in the
    ///                         <i>IAM User Guide</i>
    ///                </p>
    ///             </li>
    ///          </ul>
    ///         <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that
    ///     is used to validate this parameter. The pattern can include uppercase
    ///     letters, lowercase letters, digits with no spaces, and any of the following characters: =,.@-</p>
    public let roleName: String?
    /// <p>A list of tags that you want to attach to the newly created account. For each tag in
    ///             the list, you must specify both a tag key and a value. You can set the value to an empty
    ///             string, but you can't set it to <code>null</code>. For more information about tagging,
    ///             see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html">Tagging AWS Organizations
    ///                 resources</a> in the AWS Organizations User Guide.</p>
    ///         <note>
    ///             <p>If any one of the tags is invalid or if you exceed the allowed number of tags for
    ///                 an account, then the entire request fails and the account is not created.</p>
    ///         </note>
    public let tags: [Tag]?

    public init (
        accountName: String? = nil,
        email: String? = nil,
        iamUserAccessToBilling: IAMUserAccessToBilling? = nil,
        roleName: String? = nil,
        tags: [Tag]? = nil
    )
    {
        self.accountName = accountName
        self.email = email
        self.iamUserAccessToBilling = iamUserAccessToBilling
        self.roleName = roleName
        self.tags = tags
    }
}

extension CreateAccountInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateAccountInput(accountName: \(String(describing: accountName)), email: \(String(describing: email)), iamUserAccessToBilling: \(String(describing: iamUserAccessToBilling)), roleName: \(String(describing: roleName)), tags: \(String(describing: tags)))"}
}