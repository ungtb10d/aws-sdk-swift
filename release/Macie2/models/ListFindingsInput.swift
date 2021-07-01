// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListFindingsInput: Equatable {
    /// <p>The criteria to use to filter the results.</p>
    public let findingCriteria: FindingCriteria?
    /// <p>The maximum number of items to include in each page of the response.</p>
    public let maxResults: Int
    /// <p>The nextToken string that specifies which page of results to return in a paginated response.</p>
    public let nextToken: String?
    /// <p>The criteria to use to sort the results.</p>
    public let sortCriteria: SortCriteria?

    public init (
        findingCriteria: FindingCriteria? = nil,
        maxResults: Int = 0,
        nextToken: String? = nil,
        sortCriteria: SortCriteria? = nil
    )
    {
        self.findingCriteria = findingCriteria
        self.maxResults = maxResults
        self.nextToken = nextToken
        self.sortCriteria = sortCriteria
    }
}

extension ListFindingsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListFindingsInput(findingCriteria: \(String(describing: findingCriteria)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)), sortCriteria: \(String(describing: sortCriteria)))"}
}