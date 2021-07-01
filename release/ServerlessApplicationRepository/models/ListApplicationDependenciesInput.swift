// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListApplicationDependenciesInput: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the application.</p>
    public let applicationId: String?
    /// <p>The total number of items to return.</p>
    public let maxItems: Int
    /// <p>A token to specify where to start paginating.</p>
    public let nextToken: String?
    /// <p>The semantic version of the application to get.</p>
    public let semanticVersion: String?

    public init (
        applicationId: String? = nil,
        maxItems: Int = 0,
        nextToken: String? = nil,
        semanticVersion: String? = nil
    )
    {
        self.applicationId = applicationId
        self.maxItems = maxItems
        self.nextToken = nextToken
        self.semanticVersion = semanticVersion
    }
}

extension ListApplicationDependenciesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListApplicationDependenciesInput(applicationId: \(String(describing: applicationId)), maxItems: \(String(describing: maxItems)), nextToken: \(String(describing: nextToken)), semanticVersion: \(String(describing: semanticVersion)))"}
}