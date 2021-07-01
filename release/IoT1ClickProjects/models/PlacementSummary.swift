// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>An object providing summary information for a particular placement.</p>
public struct PlacementSummary: Equatable {
    /// <p>The date when the placement was originally created, in UNIX epoch time format.</p>
    public let createdDate: Date?
    /// <p>The name of the placement being summarized.</p>
    public let placementName: String?
    /// <p>The name of the project containing the placement.</p>
    public let projectName: String?
    /// <p>The date when the placement was last updated, in UNIX epoch time format. If the placement
    ///       was not updated, then <code>createdDate</code> and <code>updatedDate</code> are the
    ///       same.</p>
    public let updatedDate: Date?

    public init (
        createdDate: Date? = nil,
        placementName: String? = nil,
        projectName: String? = nil,
        updatedDate: Date? = nil
    )
    {
        self.createdDate = createdDate
        self.placementName = placementName
        self.projectName = projectName
        self.updatedDate = updatedDate
    }
}

extension PlacementSummary: CustomDebugStringConvertible {
    public var debugDescription: String {
        "PlacementSummary(createdDate: \(String(describing: createdDate)), placementName: \(String(describing: placementName)), projectName: \(String(describing: projectName)), updatedDate: \(String(describing: updatedDate)))"}
}