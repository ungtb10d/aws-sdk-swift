// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>A lens review summary of a workload.</p>
public struct LensReviewSummary: Equatable {
    /// <p>The alias of the lens, for example, <code>serverless</code>.</p>
    ///         <p>Each lens is identified by its <a>LensSummary$LensAlias</a>.</p>
    public let lensAlias: String?
    /// <p>The full name of the lens.</p>
    public let lensName: String?
    /// <p>The status of the lens.</p>
    public let lensStatus: LensStatus?
    /// <p>The version of the lens.</p>
    public let lensVersion: String?
    /// <p>A map from risk names to the count of how questions have that rating.</p>
    public let riskCounts: [String:Int]?
    /// <p>The date and time recorded.</p>
    public let updatedAt: Date?

    public init (
        lensAlias: String? = nil,
        lensName: String? = nil,
        lensStatus: LensStatus? = nil,
        lensVersion: String? = nil,
        riskCounts: [String:Int]? = nil,
        updatedAt: Date? = nil
    )
    {
        self.lensAlias = lensAlias
        self.lensName = lensName
        self.lensStatus = lensStatus
        self.lensVersion = lensVersion
        self.riskCounts = riskCounts
        self.updatedAt = updatedAt
    }
}

extension LensReviewSummary: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LensReviewSummary(lensAlias: \(String(describing: lensAlias)), lensName: \(String(describing: lensName)), lensStatus: \(String(describing: lensStatus)), lensVersion: \(String(describing: lensVersion)), riskCounts: \(String(describing: riskCounts)), updatedAt: \(String(describing: updatedAt)))"}
}