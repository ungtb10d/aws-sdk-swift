// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Reservation
///             coverage for a specified period, in
///             hours.</p>
public struct CoverageByTime: Equatable {
    /// <p>The groups of instances that the reservation covered.</p>
    public let groups: [ReservationCoverageGroup]?
    /// <p>The period that this coverage was used over.</p>
    public let timePeriod: DateInterval?
    /// <p>The total reservation coverage, in hours.</p>
    public let total: Coverage?

    public init (
        groups: [ReservationCoverageGroup]? = nil,
        timePeriod: DateInterval? = nil,
        total: Coverage? = nil
    )
    {
        self.groups = groups
        self.timePeriod = timePeriod
        self.total = total
    }
}

extension CoverageByTime: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CoverageByTime(groups: \(String(describing: groups)), timePeriod: \(String(describing: timePeriod)), total: \(String(describing: total)))"}
}