// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DetectPHIOutputResponse: Equatable {
    /// <p> The collection of PHI entities extracted from the input text and their associated
    ///       information. For each entity, the response provides the entity text, the entity category,
    ///       where the entity text begins and ends, and the level of confidence that Amazon Comprehend Medical has in its
    ///       detection. </p>
    public let entities: [Entity]?
    /// <p>The version of the model used to analyze the documents. The version number looks like
    ///       X.X.X. You can use this information to track the model used for a particular batch of
    ///       documents.</p>
    public let modelVersion: String?
    /// <p> If the result of the previous request to <code>DetectPHI</code> was truncated, include
    ///       the <code>PaginationToken</code> to fetch the next page of PHI entities. </p>
    public let paginationToken: String?

    public init (
        entities: [Entity]? = nil,
        modelVersion: String? = nil,
        paginationToken: String? = nil
    )
    {
        self.entities = entities
        self.modelVersion = modelVersion
        self.paginationToken = paginationToken
    }
}

extension DetectPHIOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DetectPHIOutputResponse(entities: \(String(describing: entities)), modelVersion: \(String(describing: modelVersion)), paginationToken: \(String(describing: paginationToken)))"}
}