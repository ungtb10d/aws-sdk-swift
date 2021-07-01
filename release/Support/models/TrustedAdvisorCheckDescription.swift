// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The description and metadata for a Trusted Advisor check.</p>
public struct TrustedAdvisorCheckDescription: Equatable {
    /// <p>The category of the Trusted Advisor check.</p>
    public let category: String?
    /// <p>The description of the Trusted Advisor check, which includes the alert criteria and
    ///             recommended operations (contains HTML markup).</p>
    public let description: String?
    /// <p>The unique identifier for the Trusted Advisor check.</p>
    public let id: String?
    /// <p>The column headings for the data returned by the Trusted Advisor check. The order of
    ///             the headings corresponds to the order of the data in the <b>Metadata</b> element of the <a>TrustedAdvisorResourceDetail</a>
    ///             for the check. <b>Metadata</b> contains all the data that is
    ///             shown in the Excel download, even in those cases where the UI shows just summary data.
    ///         </p>
    public let metadata: [String]?
    /// <p>The display name for the Trusted Advisor check.</p>
    public let name: String?

    public init (
        category: String? = nil,
        description: String? = nil,
        id: String? = nil,
        metadata: [String]? = nil,
        name: String? = nil
    )
    {
        self.category = category
        self.description = description
        self.id = id
        self.metadata = metadata
        self.name = name
    }
}

extension TrustedAdvisorCheckDescription: CustomDebugStringConvertible {
    public var debugDescription: String {
        "TrustedAdvisorCheckDescription(category: \(String(describing: category)), description: \(String(describing: description)), id: \(String(describing: id)), metadata: \(String(describing: metadata)), name: \(String(describing: name)))"}
}