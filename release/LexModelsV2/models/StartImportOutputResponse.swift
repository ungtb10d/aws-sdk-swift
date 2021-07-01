// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct StartImportOutputResponse: Equatable {
    /// <p>The date and time that the import request was created.</p>
    public let creationDateTime: Date?
    /// <p>A unique identifier for the import.</p>
    public let importId: String?
    /// <p>The current status of the import. When the status is
    ///             <code>Complete</code> the bot or bot alias is ready to use.</p>
    public let importStatus: ImportStatus?
    /// <p>The strategy used when there was a name conflict between the
    ///          imported resource and an existing resource. When the merge strategy is
    ///             <code>FailOnConflict</code> existing resources are not overwritten
    ///          and the import fails.</p>
    public let mergeStrategy: MergeStrategy?
    /// <p>The parameters used when importing the bot or bot locale.</p>
    public let resourceSpecification: ImportResourceSpecification?

    public init (
        creationDateTime: Date? = nil,
        importId: String? = nil,
        importStatus: ImportStatus? = nil,
        mergeStrategy: MergeStrategy? = nil,
        resourceSpecification: ImportResourceSpecification? = nil
    )
    {
        self.creationDateTime = creationDateTime
        self.importId = importId
        self.importStatus = importStatus
        self.mergeStrategy = mergeStrategy
        self.resourceSpecification = resourceSpecification
    }
}

extension StartImportOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StartImportOutputResponse(creationDateTime: \(String(describing: creationDateTime)), importId: \(String(describing: importId)), importStatus: \(String(describing: importStatus)), mergeStrategy: \(String(describing: mergeStrategy)), resourceSpecification: \(String(describing: resourceSpecification)))"}
}