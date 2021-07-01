// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>You can't delete a backup while it's being used to restore a file
///             system.</p>
public struct BackupRestoring: ClientRuntime.ServiceError, Equatable {
    public var _headers: ClientRuntime.Headers?
    public var _statusCode: HttpStatusCode?
    public var _message: String?
    public var _requestID: String?
    public var _retryable: Bool = false
    public var _isThrottling: Bool = false
    public var _type: ErrorType = .client
    /// <p>The ID of a file system being restored from the backup.</p>
    public var fileSystemId: String?
    /// <p>A detailed error message.</p>
    public var message: String?

    public init (
        fileSystemId: String? = nil,
        message: String? = nil
    )
    {
        self.fileSystemId = fileSystemId
        self.message = message
    }
}

extension BackupRestoring: CustomDebugStringConvertible {
    public var debugDescription: String {
        "BackupRestoring(fileSystemId: \(String(describing: fileSystemId)), message: \(String(describing: message)))"}
}