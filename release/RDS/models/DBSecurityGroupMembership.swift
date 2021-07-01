// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>This data type is used as a response element in the following actions:</p>
///          <ul>
///             <li>
///                <p>
///                   <code>ModifyDBInstance</code>
///                </p>
///             </li>
///             <li>
///                <p>
///                   <code>RebootDBInstance</code>
///                </p>
///             </li>
///             <li>
///                <p>
///                   <code>RestoreDBInstanceFromDBSnapshot</code>
///                </p>
///             </li>
///             <li>
///                <p>
///                   <code>RestoreDBInstanceToPointInTime</code>
///                </p>
///             </li>
///          </ul>
public struct DBSecurityGroupMembership: Equatable {
    /// <p>The name of the DB security group.</p>
    public let dBSecurityGroupName: String?
    /// <p>The status of the DB security group.</p>
    public let status: String?

    public init (
        dBSecurityGroupName: String? = nil,
        status: String? = nil
    )
    {
        self.dBSecurityGroupName = dBSecurityGroupName
        self.status = status
    }
}

extension DBSecurityGroupMembership: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DBSecurityGroupMembership(dBSecurityGroupName: \(String(describing: dBSecurityGroupName)), status: \(String(describing: status)))"}
}