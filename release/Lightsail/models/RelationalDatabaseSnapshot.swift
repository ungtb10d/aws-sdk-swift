// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Describes a database snapshot.</p>
public struct RelationalDatabaseSnapshot: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the database snapshot.</p>
    public let arn: String?
    /// <p>The timestamp when the database snapshot was created.</p>
    public let createdAt: Date?
    /// <p>The software of the database snapshot (for example, <code>MySQL</code>)</p>
    public let engine: String?
    /// <p>The database engine version for the database snapshot (for example,
    ///       <code>5.7.23</code>).</p>
    public let engineVersion: String?
    /// <p>The Amazon Resource Name (ARN) of the database from which the database snapshot was
    ///       created.</p>
    public let fromRelationalDatabaseArn: String?
    /// <p>The blueprint ID of the database from which the database snapshot was created. A blueprint
    ///       describes the major engine version of a database.</p>
    public let fromRelationalDatabaseBlueprintId: String?
    /// <p>The bundle ID of the database from which the database snapshot was created.</p>
    public let fromRelationalDatabaseBundleId: String?
    /// <p>The name of the source database from which the database snapshot was created.</p>
    public let fromRelationalDatabaseName: String?
    /// <p>The Region name and Availability Zone where the database snapshot is located.</p>
    public let location: ResourceLocation?
    /// <p>The name of the database snapshot.</p>
    public let name: String?
    /// <p>The Lightsail resource type.</p>
    public let resourceType: ResourceType?
    /// <p>The size of the disk in GB (for example, <code>32</code>) for the database
    ///       snapshot.</p>
    public let sizeInGb: Int?
    /// <p>The state of the database snapshot.</p>
    public let state: String?
    /// <p>The support code for the database snapshot. Include this code in your email to support
    ///       when you have questions about a database snapshot in Lightsail. This code enables our
    ///       support team to look up your Lightsail information more easily.</p>
    public let supportCode: String?
    /// <p>The tag keys and optional values for the resource. For more information about tags in
    ///       Lightsail, see the <a href="https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags">Lightsail
    ///         Dev Guide</a>.</p>
    public let tags: [Tag]?

    public init (
        arn: String? = nil,
        createdAt: Date? = nil,
        engine: String? = nil,
        engineVersion: String? = nil,
        fromRelationalDatabaseArn: String? = nil,
        fromRelationalDatabaseBlueprintId: String? = nil,
        fromRelationalDatabaseBundleId: String? = nil,
        fromRelationalDatabaseName: String? = nil,
        location: ResourceLocation? = nil,
        name: String? = nil,
        resourceType: ResourceType? = nil,
        sizeInGb: Int? = nil,
        state: String? = nil,
        supportCode: String? = nil,
        tags: [Tag]? = nil
    )
    {
        self.arn = arn
        self.createdAt = createdAt
        self.engine = engine
        self.engineVersion = engineVersion
        self.fromRelationalDatabaseArn = fromRelationalDatabaseArn
        self.fromRelationalDatabaseBlueprintId = fromRelationalDatabaseBlueprintId
        self.fromRelationalDatabaseBundleId = fromRelationalDatabaseBundleId
        self.fromRelationalDatabaseName = fromRelationalDatabaseName
        self.location = location
        self.name = name
        self.resourceType = resourceType
        self.sizeInGb = sizeInGb
        self.state = state
        self.supportCode = supportCode
        self.tags = tags
    }
}

extension RelationalDatabaseSnapshot: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RelationalDatabaseSnapshot(arn: \(String(describing: arn)), createdAt: \(String(describing: createdAt)), engine: \(String(describing: engine)), engineVersion: \(String(describing: engineVersion)), fromRelationalDatabaseArn: \(String(describing: fromRelationalDatabaseArn)), fromRelationalDatabaseBlueprintId: \(String(describing: fromRelationalDatabaseBlueprintId)), fromRelationalDatabaseBundleId: \(String(describing: fromRelationalDatabaseBundleId)), fromRelationalDatabaseName: \(String(describing: fromRelationalDatabaseName)), location: \(String(describing: location)), name: \(String(describing: name)), resourceType: \(String(describing: resourceType)), sizeInGb: \(String(describing: sizeInGb)), state: \(String(describing: state)), supportCode: \(String(describing: supportCode)), tags: \(String(describing: tags)))"}
}