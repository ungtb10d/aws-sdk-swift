// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Describes a recurring charge.</p>
public struct RecurringCharge: Equatable {
    /// <p>The amount charged per the period of time specified by the recurring charge
    ///             frequency.</p>
    public let recurringChargeAmount: Double
    /// <p>The frequency at which the recurring charge amount is applied.</p>
    public let recurringChargeFrequency: String?

    public init (
        recurringChargeAmount: Double = 0.0,
        recurringChargeFrequency: String? = nil
    )
    {
        self.recurringChargeAmount = recurringChargeAmount
        self.recurringChargeFrequency = recurringChargeFrequency
    }
}

extension RecurringCharge: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RecurringCharge(recurringChargeAmount: \(String(describing: recurringChargeAmount)), recurringChargeFrequency: \(String(describing: recurringChargeFrequency)))"}
}