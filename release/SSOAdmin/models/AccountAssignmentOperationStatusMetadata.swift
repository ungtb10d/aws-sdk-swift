// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Provides information about the <a>AccountAssignment</a> creation
///       request.</p>
public struct AccountAssignmentOperationStatusMetadata: Equatable {
    /// <p>The date that the permission set was created.</p>
    public let createdDate: Date?
    /// <p>The identifier for tracking the request operation that is generated by the universally
    ///       unique identifier (UUID) workflow.</p>
    public let requestId: String?
    /// <p>The status of the permission set provisioning process.</p>
    public let status: StatusValues?

    public init (
        createdDate: Date? = nil,
        requestId: String? = nil,
        status: StatusValues? = nil
    )
    {
        self.createdDate = createdDate
        self.requestId = requestId
        self.status = status
    }
}

extension AccountAssignmentOperationStatusMetadata: CustomDebugStringConvertible {
    public var debugDescription: String {
        "AccountAssignmentOperationStatusMetadata(createdDate: \(String(describing: createdDate)), requestId: \(String(describing: requestId)), status: \(String(describing: status)))"}
}