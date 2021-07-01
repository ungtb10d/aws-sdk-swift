// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Provides summary information about an import in an import
///          list.</p>
public struct ImportSummary: Equatable {
    /// <p>The date and time that the import was created.</p>
    public let creationDateTime: Date?
    /// <p>The unique identifier that Amazon Lex assigned to the import.</p>
    public let importId: String?
    /// <p>The status of the resource. When the status is
    ///             <code>Completed</code> the resource is ready to build.</p>
    public let importStatus: ImportStatus?
    /// <p>The unique identifier that Amazon Lex assigned to the imported
    ///          resource.</p>
    public let importedResourceId: String?
    /// <p>The name that you gave the imported resource.</p>
    public let importedResourceName: String?
    /// <p>The date and time that the import was last updated.</p>
    public let lastUpdatedDateTime: Date?
    /// <p>The strategy used to merge existing bot or bot locale definitions
    ///          with the imported definition.</p>
    public let mergeStrategy: MergeStrategy?

    public init (
        creationDateTime: Date? = nil,
        importId: String? = nil,
        importStatus: ImportStatus? = nil,
        importedResourceId: String? = nil,
        importedResourceName: String? = nil,
        lastUpdatedDateTime: Date? = nil,
        mergeStrategy: MergeStrategy? = nil
    )
    {
        self.creationDateTime = creationDateTime
        self.importId = importId
        self.importStatus = importStatus
        self.importedResourceId = importedResourceId
        self.importedResourceName = importedResourceName
        self.lastUpdatedDateTime = lastUpdatedDateTime
        self.mergeStrategy = mergeStrategy
    }
}

extension ImportSummary: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ImportSummary(creationDateTime: \(String(describing: creationDateTime)), importId: \(String(describing: importId)), importStatus: \(String(describing: importStatus)), importedResourceId: \(String(describing: importedResourceId)), importedResourceName: \(String(describing: importedResourceName)), lastUpdatedDateTime: \(String(describing: lastUpdatedDateTime)), mergeStrategy: \(String(describing: mergeStrategy)))"}
}