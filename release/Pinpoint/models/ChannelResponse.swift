// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Provides information about the general settings and status of a channel for an application.</p>
public struct ChannelResponse: Equatable {
    /// <p>The unique identifier for the application.</p>
    public let applicationId: String?
    /// <p>The date and time, in ISO 8601 format, when the channel was enabled.</p>
    public let creationDate: String?
    /// <p>Specifies whether the channel is enabled for the application.</p>
    public let enabled: Bool
    /// <p>(Not used) This property is retained only for backward compatibility.</p>
    public let hasCredential: Bool
    /// <p>(Deprecated) An identifier for the channel. This property is retained only for backward compatibility.</p>
    public let id: String?
    /// <p>Specifies whether the channel is archived.</p>
    public let isArchived: Bool
    /// <p>The user who last modified the channel.</p>
    public let lastModifiedBy: String?
    /// <p>The date and time, in ISO 8601 format, when the channel was last modified.</p>
    public let lastModifiedDate: String?
    /// <p>The current version of the channel.</p>
    public let version: Int

    public init (
        applicationId: String? = nil,
        creationDate: String? = nil,
        enabled: Bool = false,
        hasCredential: Bool = false,
        id: String? = nil,
        isArchived: Bool = false,
        lastModifiedBy: String? = nil,
        lastModifiedDate: String? = nil,
        version: Int = 0
    )
    {
        self.applicationId = applicationId
        self.creationDate = creationDate
        self.enabled = enabled
        self.hasCredential = hasCredential
        self.id = id
        self.isArchived = isArchived
        self.lastModifiedBy = lastModifiedBy
        self.lastModifiedDate = lastModifiedDate
        self.version = version
    }
}

extension ChannelResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ChannelResponse(applicationId: \(String(describing: applicationId)), creationDate: \(String(describing: creationDate)), enabled: \(String(describing: enabled)), hasCredential: \(String(describing: hasCredential)), id: \(String(describing: id)), isArchived: \(String(describing: isArchived)), lastModifiedBy: \(String(describing: lastModifiedBy)), lastModifiedDate: \(String(describing: lastModifiedDate)), version: \(String(describing: version)))"}
}