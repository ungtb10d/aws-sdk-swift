// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateFilterInput: Equatable {
    /// <p>Specifies the action that is to be applied to the findings that match the filter.</p>
    public let action: FilterAction?
    /// <p>The description of the filter.</p>
    public let description: String?
    /// <p>The unique ID of the detector that specifies the GuardDuty service where you want to
    ///       update a filter.</p>
    public let detectorId: String?
    /// <p>The name of the filter.</p>
    public let filterName: String?
    /// <p>Represents the criteria to be used in the filter for querying findings.</p>
    public let findingCriteria: FindingCriteria?
    /// <p>Specifies the position of the filter in the list of current filters. Also specifies the
    ///       order in which this filter is applied to the findings.</p>
    public let rank: Int

    public init (
        action: FilterAction? = nil,
        description: String? = nil,
        detectorId: String? = nil,
        filterName: String? = nil,
        findingCriteria: FindingCriteria? = nil,
        rank: Int = 0
    )
    {
        self.action = action
        self.description = description
        self.detectorId = detectorId
        self.filterName = filterName
        self.findingCriteria = findingCriteria
        self.rank = rank
    }
}

extension UpdateFilterInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateFilterInput(action: \(String(describing: action)), description: \(String(describing: description)), detectorId: \(String(describing: detectorId)), filterName: \(String(describing: filterName)), findingCriteria: \(String(describing: findingCriteria)), rank: \(String(describing: rank)))"}
}