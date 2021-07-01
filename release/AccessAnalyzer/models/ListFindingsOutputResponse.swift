// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The response to the request.</p>
public struct ListFindingsOutputResponse: Equatable {
    /// <p>A list of findings retrieved from the analyzer that match the filter criteria specified,
    ///          if any.</p>
    public let findings: [FindingSummary]?
    /// <p>A token used for pagination of results returned.</p>
    public let nextToken: String?

    public init (
        findings: [FindingSummary]? = nil,
        nextToken: String? = nil
    )
    {
        self.findings = findings
        self.nextToken = nextToken
    }
}

extension ListFindingsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListFindingsOutputResponse(findings: \(String(describing: findings)), nextToken: \(String(describing: nextToken)))"}
}