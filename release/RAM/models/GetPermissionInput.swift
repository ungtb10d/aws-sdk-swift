// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetPermissionInput: Equatable {
    /// <p>The ARN of the permission.</p>
    public let permissionArn: String?
    /// <p>The identifier for the version of the permission.</p>
    public let permissionVersion: Int?

    public init (
        permissionArn: String? = nil,
        permissionVersion: Int? = nil
    )
    {
        self.permissionArn = permissionArn
        self.permissionVersion = permissionVersion
    }
}

extension GetPermissionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetPermissionInput(permissionArn: \(String(describing: permissionArn)), permissionVersion: \(String(describing: permissionVersion)))"}
}