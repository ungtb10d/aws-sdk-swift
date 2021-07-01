// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Information about a schema extension.</p>
public struct SchemaExtensionInfo: Equatable {
    /// <p>A description of the schema extension.</p>
    public let description: String?
    /// <p>The identifier of the directory to which the schema extension is applied.</p>
    public let directoryId: String?
    /// <p>The date and time that the schema extension was completed.</p>
    public let endDateTime: Date?
    /// <p>The identifier of the schema extension.</p>
    public let schemaExtensionId: String?
    /// <p>The current status of the schema extension.</p>
    public let schemaExtensionStatus: SchemaExtensionStatus?
    /// <p>The reason for the <code>SchemaExtensionStatus</code>.</p>
    public let schemaExtensionStatusReason: String?
    /// <p>The date and time that the schema extension started being applied to the directory.</p>
    public let startDateTime: Date?

    public init (
        description: String? = nil,
        directoryId: String? = nil,
        endDateTime: Date? = nil,
        schemaExtensionId: String? = nil,
        schemaExtensionStatus: SchemaExtensionStatus? = nil,
        schemaExtensionStatusReason: String? = nil,
        startDateTime: Date? = nil
    )
    {
        self.description = description
        self.directoryId = directoryId
        self.endDateTime = endDateTime
        self.schemaExtensionId = schemaExtensionId
        self.schemaExtensionStatus = schemaExtensionStatus
        self.schemaExtensionStatusReason = schemaExtensionStatusReason
        self.startDateTime = startDateTime
    }
}

extension SchemaExtensionInfo: CustomDebugStringConvertible {
    public var debugDescription: String {
        "SchemaExtensionInfo(description: \(String(describing: description)), directoryId: \(String(describing: directoryId)), endDateTime: \(String(describing: endDateTime)), schemaExtensionId: \(String(describing: schemaExtensionId)), schemaExtensionStatus: \(String(describing: schemaExtensionStatus)), schemaExtensionStatusReason: \(String(describing: schemaExtensionStatusReason)), startDateTime: \(String(describing: startDateTime)))"}
}