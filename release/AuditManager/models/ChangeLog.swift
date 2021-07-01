// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>
///    The record of a change within AWS Audit Manager, such as a modified assessment, a delegated control set, and so on.
/// </p>
public struct ChangeLog: Equatable {
    /// <p>
    ///    The action performed.
    /// </p>
    public let action: ActionEnum?
    /// <p>
    ///  The time of creation for the changelog object.
    /// </p>
    public let createdAt: Date?
    /// <p>
    ///  The IAM user or role that performed the action.
    /// </p>
    public let createdBy: String?
    /// <p>
    ///  The name of the changelog object.
    /// </p>
    public let objectName: String?
    /// <p>
    ///  The changelog object type, such as an assessment, control, or control set.
    /// </p>
    public let objectType: ObjectTypeEnum?

    public init (
        action: ActionEnum? = nil,
        createdAt: Date? = nil,
        createdBy: String? = nil,
        objectName: String? = nil,
        objectType: ObjectTypeEnum? = nil
    )
    {
        self.action = action
        self.createdAt = createdAt
        self.createdBy = createdBy
        self.objectName = objectName
        self.objectType = objectType
    }
}

extension ChangeLog: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ChangeLog(action: \(String(describing: action)), createdAt: \(String(describing: createdAt)), createdBy: \(String(describing: createdBy)), objectName: \(String(describing: objectName)), objectType: \(String(describing: objectType)))"}
}