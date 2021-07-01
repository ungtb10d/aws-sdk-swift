// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes a directory that is used with Amazon WorkSpaces.</p>
public struct WorkspaceDirectory: Equatable {
    /// <p>The directory alias.</p>
    public let alias: String?
    /// <p>The user name for the service account.</p>
    public let customerUserName: String?
    /// <p>The directory identifier.</p>
    public let directoryId: String?
    /// <p>The name of the directory.</p>
    public let directoryName: String?
    /// <p>The directory type.</p>
    public let directoryType: WorkspaceDirectoryType?
    /// <p>The IP addresses of the DNS servers for the directory.</p>
    public let dnsIpAddresses: [String]?
    /// <p>The identifier of the IAM role. This is the role that allows Amazon WorkSpaces to make
    ///          calls to other services, such as Amazon EC2, on your behalf.</p>
    public let iamRoleId: String?
    /// <p>The identifiers of the IP access control groups associated with the directory.</p>
    public let ipGroupIds: [String]?
    /// <p>The registration code for the directory. This is the code that users enter in their
    ///          Amazon WorkSpaces client application to connect to the directory.</p>
    public let registrationCode: String?
    /// <p>The default self-service permissions for WorkSpaces in the directory.</p>
    public let selfservicePermissions: SelfservicePermissions?
    /// <p>The state of the directory's registration with Amazon WorkSpaces. After a directory is
    ///          deregistered, the <code>DEREGISTERED</code> state is returned very briefly before the directory
    ///          metadata is cleaned up, so this state is rarely returned. To confirm that a directory is deregistered,
    ///          check for the directory ID by using
    ///          <a href="https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceDirectories.html">
    ///             DescribeWorkspaceDirectories</a>. If the directory ID isn't returned, then the directory has been
    ///          successfully deregistered.</p>
    public let state: WorkspaceDirectoryState?
    /// <p>The identifiers of the subnets used with the directory.</p>
    public let subnetIds: [String]?
    /// <p>Specifies whether the directory is dedicated or shared. To use Bring Your Own License
    ///          (BYOL), this value must be set to <code>DEDICATED</code>. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html">Bring
    ///             Your Own Windows Desktop Images</a>.</p>
    public let tenancy: Tenancy?
    /// <p>The devices and operating systems that users can use to access WorkSpaces.</p>
    public let workspaceAccessProperties: WorkspaceAccessProperties?
    /// <p>The default creation properties for all WorkSpaces in the directory.</p>
    public let workspaceCreationProperties: DefaultWorkspaceCreationProperties?
    /// <p>The identifier of the security group that is assigned to new WorkSpaces.</p>
    public let workspaceSecurityGroupId: String?

    public init (
        alias: String? = nil,
        customerUserName: String? = nil,
        directoryId: String? = nil,
        directoryName: String? = nil,
        directoryType: WorkspaceDirectoryType? = nil,
        dnsIpAddresses: [String]? = nil,
        iamRoleId: String? = nil,
        ipGroupIds: [String]? = nil,
        registrationCode: String? = nil,
        selfservicePermissions: SelfservicePermissions? = nil,
        state: WorkspaceDirectoryState? = nil,
        subnetIds: [String]? = nil,
        tenancy: Tenancy? = nil,
        workspaceAccessProperties: WorkspaceAccessProperties? = nil,
        workspaceCreationProperties: DefaultWorkspaceCreationProperties? = nil,
        workspaceSecurityGroupId: String? = nil
    )
    {
        self.alias = alias
        self.customerUserName = customerUserName
        self.directoryId = directoryId
        self.directoryName = directoryName
        self.directoryType = directoryType
        self.dnsIpAddresses = dnsIpAddresses
        self.iamRoleId = iamRoleId
        self.ipGroupIds = ipGroupIds
        self.registrationCode = registrationCode
        self.selfservicePermissions = selfservicePermissions
        self.state = state
        self.subnetIds = subnetIds
        self.tenancy = tenancy
        self.workspaceAccessProperties = workspaceAccessProperties
        self.workspaceCreationProperties = workspaceCreationProperties
        self.workspaceSecurityGroupId = workspaceSecurityGroupId
    }
}

extension WorkspaceDirectory: CustomDebugStringConvertible {
    public var debugDescription: String {
        "WorkspaceDirectory(alias: \(String(describing: alias)), customerUserName: \(String(describing: customerUserName)), directoryId: \(String(describing: directoryId)), directoryName: \(String(describing: directoryName)), directoryType: \(String(describing: directoryType)), dnsIpAddresses: \(String(describing: dnsIpAddresses)), iamRoleId: \(String(describing: iamRoleId)), registrationCode: \(String(describing: registrationCode)), selfservicePermissions: \(String(describing: selfservicePermissions)), state: \(String(describing: state)), subnetIds: \(String(describing: subnetIds)), tenancy: \(String(describing: tenancy)), workspaceAccessProperties: \(String(describing: workspaceAccessProperties)), workspaceCreationProperties: \(String(describing: workspaceCreationProperties)), workspaceSecurityGroupId: \(String(describing: workspaceSecurityGroupId)), ipGroupIds: \(String(describing: ipGroupIds)))"}
}