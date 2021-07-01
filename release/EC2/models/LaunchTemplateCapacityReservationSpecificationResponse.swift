// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Information about the Capacity Reservation targeting option.</p>
public struct LaunchTemplateCapacityReservationSpecificationResponse: Equatable {
    /// <p>Indicates the instance's Capacity Reservation preferences. Possible preferences include:</p>
    /// 		       <ul>
    ///             <li>
    ///                <p>
    ///                   <code>open</code> - The instance can run in any <code>open</code> Capacity Reservation that has matching attributes
    /// 				(instance type, platform, Availability Zone).</p>
    ///             </li>
    ///             <li>
    ///                <p>
    ///                   <code>none</code> - The instance avoids running in a Capacity Reservation even if one is available. The instance
    /// 				runs in On-Demand capacity.</p>
    ///             </li>
    ///          </ul>
    public let capacityReservationPreference: CapacityReservationPreference?
    /// <p>Information about the target Capacity Reservation or Capacity Reservation group.</p>
    public let capacityReservationTarget: CapacityReservationTargetResponse?

    public init (
        capacityReservationPreference: CapacityReservationPreference? = nil,
        capacityReservationTarget: CapacityReservationTargetResponse? = nil
    )
    {
        self.capacityReservationPreference = capacityReservationPreference
        self.capacityReservationTarget = capacityReservationTarget
    }
}

extension LaunchTemplateCapacityReservationSpecificationResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LaunchTemplateCapacityReservationSpecificationResponse(capacityReservationPreference: \(String(describing: capacityReservationPreference)), capacityReservationTarget: \(String(describing: capacityReservationTarget)))"}
}