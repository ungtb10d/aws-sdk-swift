// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Summary of a Service Catalog AppRegistry application.</p>
public struct ApplicationSummary: Equatable {
    /// <p>The Amazon resource name (ARN) that specifies the application across services.</p>
    public let arn: String?
    /// <p>The ISO-8601 formatted timestamp of the moment when the application was created.</p>
    public let creationTime: Date?
    /// <p>The description of the application.</p>
    public let description: String?
    /// <p>The identifier of the application.</p>
    public let id: String?
    /// <p> The ISO-8601 formatted timestamp of the moment when the application was last updated.</p>
    public let lastUpdateTime: Date?
    /// <p>The name of the application. The name must be unique in the region in which you are creating the application.</p>
    public let name: String?

    public init (
        arn: String? = nil,
        creationTime: Date? = nil,
        description: String? = nil,
        id: String? = nil,
        lastUpdateTime: Date? = nil,
        name: String? = nil
    )
    {
        self.arn = arn
        self.creationTime = creationTime
        self.description = description
        self.id = id
        self.lastUpdateTime = lastUpdateTime
        self.name = name
    }
}

extension ApplicationSummary: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ApplicationSummary(arn: \(String(describing: arn)), creationTime: \(String(describing: creationTime)), description: \(String(describing: description)), id: \(String(describing: id)), lastUpdateTime: \(String(describing: lastUpdateTime)), name: \(String(describing: name)))"}
}