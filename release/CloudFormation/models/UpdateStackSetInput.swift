// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateStackSetInput: Equatable {
    /// <p>[Self-managed permissions] The accounts in which to update associated stack instances. If you specify accounts, you
    ///          must also specify the Regions in which to update stack set instances.</p>
    ///          <p>To update <i>all</i> the stack instances associated with this stack set,
    ///          do not specify the <code>Accounts</code> or <code>Regions</code> properties.</p>
    ///          <p>If the stack set update includes changes to the template (that is, if the
    ///             <code>TemplateBody</code> or <code>TemplateURL</code> properties are specified), or the
    ///             <code>Parameters</code> property, AWS CloudFormation marks all stack instances with a status of
    ///             <code>OUTDATED</code> prior to updating the stack instances in the specified accounts
    ///          and Regions. If the stack set update does not include changes to the template or
    ///          parameters, AWS CloudFormation updates the stack instances in the specified accounts and Regions, while
    ///          leaving all other stack instances with their existing stack instance status. </p>
    public let accounts: [String]?
    /// <p>The Amazon Resource Number (ARN) of the IAM role to use to update this stack set.</p>
    ///          <p>Specify an IAM role only if you are using customized administrator roles to control
    ///          which users or groups can manage specific stack sets within the same administrator account.
    ///          For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html">Granting
    ///             Permissions for Stack Set Operations</a> in the
    ///             <i>AWS CloudFormation User Guide</i>.</p>
    ///          <p>If you specified a customized administrator role when you created the stack set, you
    ///          must specify a customized administrator role, even if it is the same customized
    ///          administrator role used with this stack set previously.</p>
    public let administrationRoleARN: String?
    /// <p>[Service-managed permissions] Describes whether StackSets automatically deploys to AWS Organizations accounts that are added to a target organization or organizational unit (OU).</p>
    ///          <p>If you specify <code>AutoDeployment</code>, do not specify <code>DeploymentTargets</code> or <code>Regions</code>.</p>
    public let autoDeployment: AutoDeployment?
    /// <p>[Service-managed permissions] Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account.</p>
    ///          <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with self-managed permissions.</p>
    ///          <ul>
    ///             <li>
    ///                <p>If you are signed in to the management account, specify <code>SELF</code>.</p>
    ///             </li>
    ///             <li>
    ///                <p>If you are signed in to a delegated administrator account, specify <code>DELEGATED_ADMIN</code>.</p>
    ///                <p>Your AWS account must be registered as a delegated administrator in the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>AWS CloudFormation User Guide</i>.</p>
    ///             </li>
    ///          </ul>
    public let callAs: CallAs?
    /// <p>In some cases, you must explicitly acknowledge that your stack template contains certain
    ///          capabilities in order for AWS CloudFormation to update the stack set and its associated stack
    ///          instances.</p>
    ///          <ul>
    ///             <li>
    ///                <p>
    ///                   <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>
    ///                </p>
    ///                <p>Some stack templates might include resources that can affect permissions in
    ///                your AWS account; for example, by creating new AWS Identity and Access Management
    ///                (IAM) users. For those stacks sets, you must explicitly acknowledge this by
    ///                specifying one of these capabilities.</p>
    ///                <p>The following IAM resources require you to specify either the
    ///                   <code>CAPABILITY_IAM</code> or <code>CAPABILITY_NAMED_IAM</code>
    ///                capability.</p>
    ///                <ul>
    ///                   <li>
    ///                      <p>If you have IAM resources, you can specify either capability. </p>
    ///                   </li>
    ///                   <li>
    ///                      <p>If you have IAM resources with custom names, you <i>must</i>
    ///                      specify <code>CAPABILITY_NAMED_IAM</code>. </p>
    ///                   </li>
    ///                   <li>
    ///                      <p>If you don't specify either of these capabilities, AWS CloudFormation returns an
    ///                         <code>InsufficientCapabilities</code> error.</p>
    ///                   </li>
    ///                </ul>
    ///                <p>If your stack template contains these resources, we recommend that you review
    ///                all permissions associated with them and edit their permissions if
    ///                necessary.</p>
    ///                <ul>
    ///                   <li>
    ///                      <p>
    ///                         <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html">
    ///                         AWS::IAM::AccessKey</a>
    ///                      </p>
    ///                   </li>
    ///                   <li>
    ///                      <p>
    ///                         <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html">
    ///                         AWS::IAM::Group</a>
    ///                      </p>
    ///                   </li>
    ///                   <li>
    ///                      <p>
    ///                         <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html"> AWS::IAM::InstanceProfile</a>
    ///                      </p>
    ///                   </li>
    ///                   <li>
    ///                      <p>
    ///                         <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html">
    ///                         AWS::IAM::Policy</a>
    ///                      </p>
    ///                   </li>
    ///                   <li>
    ///                      <p>
    ///                         <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html">
    ///                         AWS::IAM::Role</a>
    ///                      </p>
    ///                   </li>
    ///                   <li>
    ///                      <p>
    ///                         <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html">
    ///                         AWS::IAM::User</a>
    ///                      </p>
    ///                   </li>
    ///                   <li>
    ///                      <p>
    ///                         <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html"> AWS::IAM::UserToGroupAddition</a>
    ///                      </p>
    ///                   </li>
    ///                </ul>
    ///                <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities">Acknowledging IAM
    ///                   Resources in AWS CloudFormation Templates</a>.</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>CAPABILITY_AUTO_EXPAND</code>
    ///                </p>
    ///                <p>Some templates reference macros. If your stack set template references one or more macros,
    ///                you must update the stack set directly from the processed template, without first
    ///                reviewing the resulting changes in a change set. To update the stack set directly, you must acknowledge this
    ///                capability. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html">Using AWS CloudFormation Macros to Perform Custom Processing on
    ///                   Templates</a>.</p>
    ///                <important>
    ///                   <p>Stack sets with service-managed permissions
    ///                   do not currently support the use of macros in templates. (This includes
    ///                   the <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html">AWS::Include</a> and <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html">AWS::Serverless</a>
    ///                   transforms, which are macros hosted by AWS CloudFormation.) Even if you specify this
    ///                   capability for a stack set with service-managed permissions, if you reference a macro in your template the stack set operation will
    ///                   fail.</p>
    ///                </important>
    ///             </li>
    ///          </ul>
    public let capabilities: [Capability]?
    /// <p>[Service-managed permissions] The AWS Organizations accounts in which to update associated stack instances.</p>
    ///          <p>To update all the stack instances associated with this stack set, do not specify <code>DeploymentTargets</code> or <code>Regions</code>.</p>
    ///          <p>If the stack set update includes changes to the template (that is, if <code>TemplateBody</code> or <code>TemplateURL</code> is specified), or the <code>Parameters</code>, AWS CloudFormation marks all stack instances with a status of <code>OUTDATED</code> prior to updating the stack instances in the specified accounts and Regions. If the stack set update does not include changes to the template or parameters, AWS CloudFormation updates the stack instances in the specified accounts and Regions, while leaving all other stack instances with their existing stack instance status.</p>
    public let deploymentTargets: DeploymentTargets?
    /// <p>A brief description of updates that you are making.</p>
    public let description: String?
    /// <p>The name of the IAM execution role to use to update the stack set. If you do not specify
    ///          an execution role, AWS CloudFormation uses the <code>AWSCloudFormationStackSetExecutionRole</code> role
    ///          for the stack set operation.</p>
    ///          <p>Specify an IAM role only if you are using customized execution roles to control which
    ///          stack resources users and groups can include in their stack sets.
    ///       </p>
    ///          <p> If you specify a customized execution role, AWS CloudFormation uses that role to update the stack.
    ///          If you do not specify a customized execution role, AWS CloudFormation performs the update using the role
    ///          previously associated with the stack set, so long as you have permissions to perform
    ///          operations on the stack set.</p>
    public let executionRoleName: String?
    /// <p>The unique ID for this stack set operation. </p>
    ///          <p>The operation ID also functions as an idempotency token, to ensure that AWS
    ///          CloudFormation performs the stack set operation only once, even if you retry the request
    ///          multiple times. You might retry stack set operation requests to ensure that AWS
    ///          CloudFormation successfully received them.</p>
    ///          <p>If you don't specify an operation ID, AWS CloudFormation generates one
    ///          automatically.</p>
    ///          <p>Repeating this stack set operation with a new operation ID retries all stack
    ///          instances whose status is <code>OUTDATED</code>. </p>
    public var operationId: String?
    /// <p>Preferences for how AWS CloudFormation performs this stack set operation.</p>
    public let operationPreferences: StackSetOperationPreferences?
    /// <p>A list of input parameters for the stack set template. </p>
    public let parameters: [Parameter]?
    /// <p>Describes how the IAM roles required for stack set operations are created. You cannot modify <code>PermissionModel</code> if there are stack instances associated with your stack set.</p>
    ///          <ul>
    ///             <li>
    ///                <p>With <code>self-managed</code> permissions, you must create the administrator and execution roles required to deploy to target accounts. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html">Grant Self-Managed Stack Set Permissions</a>.</p>
    ///             </li>
    ///             <li>
    ///                <p>With <code>service-managed</code> permissions, StackSets automatically creates the IAM roles required to deploy to accounts managed by AWS Organizations. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-service-managed.html">Grant Service-Managed Stack Set Permissions</a>.</p>
    ///             </li>
    ///          </ul>
    public let permissionModel: PermissionModels?
    /// <p>The Regions in which to update associated stack instances. If you specify Regions, you
    ///          must also specify accounts in which to update stack set instances.</p>
    ///          <p>To update <i>all</i> the stack instances associated with this stack set,
    ///          do not specify the <code>Accounts</code> or <code>Regions</code> properties.</p>
    ///          <p>If the stack set update includes changes to the template (that is, if the
    ///             <code>TemplateBody</code> or <code>TemplateURL</code> properties are specified), or the
    ///             <code>Parameters</code> property, AWS CloudFormation marks all stack instances with a status of
    ///             <code>OUTDATED</code> prior to updating the stack instances in the specified accounts
    ///          and Regions. If the stack set update does not include changes to the template or
    ///          parameters, AWS CloudFormation updates the stack instances in the specified accounts and Regions, while
    ///          leaving all other stack instances with their existing stack instance status. </p>
    public let regions: [String]?
    /// <p>The name or unique ID of the stack set that you want to update.</p>
    public let stackSetName: String?
    /// <p>The key-value pairs to associate with this stack set and the stacks created from it.
    ///          AWS CloudFormation also propagates these tags to supported resources that are created in
    ///          the stacks. You can specify a maximum number of 50 tags.</p>
    ///          <p>If you specify tags for this parameter, those tags replace any list of tags that are
    ///          currently associated with this stack set. This means:</p>
    ///          <ul>
    ///             <li>
    ///                <p>If you don't specify this parameter, AWS CloudFormation doesn't modify the
    ///                stack's tags. </p>
    ///             </li>
    ///             <li>
    ///                <p>If you specify <i>any</i> tags using this parameter, you must
    ///                specify <i>all</i> the tags that you want associated with this stack
    ///                set, even tags you've specifed before (for example, when creating the stack set or
    ///                during a previous update of the stack set.). Any tags that you don't include in the
    ///                updated list of tags are removed from the stack set, and therefore from the stacks
    ///                and resources as well. </p>
    ///             </li>
    ///             <li>
    ///                <p>If you specify an empty value, AWS CloudFormation removes all currently
    ///                associated tags.</p>
    ///             </li>
    ///          </ul>
    ///          <p>If you specify new tags as part of an <code>UpdateStackSet</code> action, AWS
    ///          CloudFormation checks to see if you have the required IAM permission to tag resources. If
    ///          you omit tags that are currently associated with the stack set from the list of tags you
    ///          specify, AWS CloudFormation assumes that you want to remove those tags from the stack set,
    ///          and checks to see if you have permission to untag resources. If you don't have the
    ///          necessary permission(s), the entire <code>UpdateStackSet</code> action fails with an
    ///             <code>access denied</code> error, and the stack set is not updated.</p>
    public let tags: [Tag]?
    /// <p>The structure that contains the template body, with a minimum length of 1 byte and a
    ///          maximum length of 51,200 bytes. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a>
    ///          in the AWS CloudFormation User Guide.</p>
    ///          <p>Conditional: You must specify only one of the following parameters:
    ///             <code>TemplateBody</code> or <code>TemplateURL</code>—or set
    ///             <code>UsePreviousTemplate</code> to true.</p>
    public let templateBody: String?
    /// <p>The location of the file that contains the template body. The URL must point to a
    ///          template (maximum size: 460,800 bytes) that is located in an Amazon S3 bucket or a Systems
    ///          Manager document. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a>
    ///          in the AWS CloudFormation User Guide.</p>
    ///          <p>Conditional: You must specify only one of the following parameters:
    ///             <code>TemplateBody</code> or <code>TemplateURL</code>—or set
    ///             <code>UsePreviousTemplate</code> to true. </p>
    public let templateURL: String?
    /// <p>Use the existing template that's associated with the stack set that you're
    ///          updating.</p>
    ///          <p>Conditional: You must specify only one of the following parameters:
    ///             <code>TemplateBody</code> or <code>TemplateURL</code>—or set
    ///             <code>UsePreviousTemplate</code> to true. </p>
    public let usePreviousTemplate: Bool?

    public init (
        accounts: [String]? = nil,
        administrationRoleARN: String? = nil,
        autoDeployment: AutoDeployment? = nil,
        callAs: CallAs? = nil,
        capabilities: [Capability]? = nil,
        deploymentTargets: DeploymentTargets? = nil,
        description: String? = nil,
        executionRoleName: String? = nil,
        operationId: String? = nil,
        operationPreferences: StackSetOperationPreferences? = nil,
        parameters: [Parameter]? = nil,
        permissionModel: PermissionModels? = nil,
        regions: [String]? = nil,
        stackSetName: String? = nil,
        tags: [Tag]? = nil,
        templateBody: String? = nil,
        templateURL: String? = nil,
        usePreviousTemplate: Bool? = nil
    )
    {
        self.accounts = accounts
        self.administrationRoleARN = administrationRoleARN
        self.autoDeployment = autoDeployment
        self.callAs = callAs
        self.capabilities = capabilities
        self.deploymentTargets = deploymentTargets
        self.description = description
        self.executionRoleName = executionRoleName
        self.operationId = operationId
        self.operationPreferences = operationPreferences
        self.parameters = parameters
        self.permissionModel = permissionModel
        self.regions = regions
        self.stackSetName = stackSetName
        self.tags = tags
        self.templateBody = templateBody
        self.templateURL = templateURL
        self.usePreviousTemplate = usePreviousTemplate
    }
}

extension UpdateStackSetInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateStackSetInput(accounts: \(String(describing: accounts)), administrationRoleARN: \(String(describing: administrationRoleARN)), autoDeployment: \(String(describing: autoDeployment)), callAs: \(String(describing: callAs)), capabilities: \(String(describing: capabilities)), deploymentTargets: \(String(describing: deploymentTargets)), description: \(String(describing: description)), executionRoleName: \(String(describing: executionRoleName)), operationId: \(String(describing: operationId)), operationPreferences: \(String(describing: operationPreferences)), parameters: \(String(describing: parameters)), permissionModel: \(String(describing: permissionModel)), regions: \(String(describing: regions)), stackSetName: \(String(describing: stackSetName)), tags: \(String(describing: tags)), templateBody: \(String(describing: templateBody)), templateURL: \(String(describing: templateURL)), usePreviousTemplate: \(String(describing: usePreviousTemplate)))"}
}