// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Retrieves a list of analyzers.</p>
public struct ListAnalyzersInput: Equatable {
    /// <p>The maximum number of results to return in the response.</p>
    public let maxResults: Int?
    /// <p>A token used for pagination of results returned.</p>
    public let nextToken: String?
    /// <p>The type of analyzer.</p>
    public let type: `Type`?

    public init (
        maxResults: Int? = nil,
        nextToken: String? = nil,
        type: `Type`? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.type = type
    }
}

extension ListAnalyzersInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListAnalyzersInput(maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), type: \(String(describing: type)))"}
}