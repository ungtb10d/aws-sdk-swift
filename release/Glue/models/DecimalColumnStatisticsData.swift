// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Defines column statistics supported for fixed-point number data columns.</p>
public struct DecimalColumnStatisticsData: Equatable {
    /// <p>The highest value in the column.</p>
    public let maximumValue: DecimalNumber?
    /// <p>The lowest value in the column.</p>
    public let minimumValue: DecimalNumber?
    /// <p>The number of distinct values in a column.</p>
    public let numberOfDistinctValues: Int
    /// <p>The number of null values in the column.</p>
    public let numberOfNulls: Int

    public init (
        maximumValue: DecimalNumber? = nil,
        minimumValue: DecimalNumber? = nil,
        numberOfDistinctValues: Int = 0,
        numberOfNulls: Int = 0
    )
    {
        self.maximumValue = maximumValue
        self.minimumValue = minimumValue
        self.numberOfDistinctValues = numberOfDistinctValues
        self.numberOfNulls = numberOfNulls
    }
}

extension DecimalColumnStatisticsData: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DecimalColumnStatisticsData(maximumValue: \(String(describing: maximumValue)), minimumValue: \(String(describing: minimumValue)), numberOfDistinctValues: \(String(describing: numberOfDistinctValues)), numberOfNulls: \(String(describing: numberOfNulls)))"}
}