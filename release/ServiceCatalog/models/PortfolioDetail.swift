// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>Information about a portfolio.</p>
public struct PortfolioDetail: Equatable {
    /// <p>The ARN assigned to the portfolio.</p>
    public let aRN: String?
    /// <p>The UTC time stamp of the creation time.</p>
    public let createdTime: Date?
    /// <p>The description of the portfolio.</p>
    public let description: String?
    /// <p>The name to use for display purposes.</p>
    public let displayName: String?
    /// <p>The portfolio identifier.</p>
    public let id: String?
    /// <p>The name of the portfolio provider.</p>
    public let providerName: String?

    public init (
        aRN: String? = nil,
        createdTime: Date? = nil,
        description: String? = nil,
        displayName: String? = nil,
        id: String? = nil,
        providerName: String? = nil
    )
    {
        self.aRN = aRN
        self.createdTime = createdTime
        self.description = description
        self.displayName = displayName
        self.id = id
        self.providerName = providerName
    }
}

extension PortfolioDetail: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PortfolioDetail(aRN: \(String(describing: aRN)), createdTime: \(String(describing: createdTime)), description: \(String(describing: description)), displayName: \(String(describing: displayName)), id: \(String(describing: id)), providerName: \(String(describing: providerName)))"}
}