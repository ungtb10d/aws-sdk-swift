// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeConformancePackStatusInput: Equatable {
    /// <p>Comma-separated list of conformance pack names.</p>
    public let conformancePackNames: [String]?
    /// <p>The maximum number of conformance packs status returned on each page.</p>
    public let limit: Int
    /// <p>The <code>nextToken</code> string returned in a previous request that you use to request the next page of results in a paginated response.</p>
    public let nextToken: String?

    public init (
        conformancePackNames: [String]? = nil,
        limit: Int = 0,
        nextToken: String? = nil
    )
    {
        self.conformancePackNames = conformancePackNames
        self.limit = limit
        self.nextToken = nextToken
    }
}

extension DescribeConformancePackStatusInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeConformancePackStatusInput(conformancePackNames: \(String(describing: conformancePackNames)), limit: \(String(describing: limit)), nextToken: \(String(describing: nextToken)))"}
}