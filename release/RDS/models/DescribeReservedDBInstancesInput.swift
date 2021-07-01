// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p></p>
public struct DescribeReservedDBInstancesInput: Equatable {
    /// <p>The DB instance class filter value. Specify this parameter to show only those reservations matching the specified DB instances class.</p>
    public let dBInstanceClass: String?
    /// <p>The duration filter value, specified in years or seconds. Specify this parameter to show only reservations for this duration.</p>
    ///          <p>Valid Values: <code>1 | 3 | 31536000 | 94608000</code>
    ///          </p>
    public let duration: String?
    /// <p>This parameter isn't currently supported.</p>
    public let filters: [Filter]?
    /// <p>The lease identifier filter value. Specify this parameter to show only the reservation that matches the specified lease ID.</p>
    ///          <note>
    ///             <p>AWS Support might request the lease ID for an issue related to a reserved DB instance.</p>
    ///          </note>
    public let leaseId: String?
    /// <p>
    ///         An optional pagination token provided by a previous request.
    ///         If this parameter is specified, the response includes
    ///         only records beyond the marker,
    ///         up to the value specified by <code>MaxRecords</code>.
    ///     </p>
    public let marker: String?
    /// <p>
    ///     The maximum number of records to include in the response.
    ///     If more than the <code>MaxRecords</code> value is available, a pagination token called a marker is
    ///           included in the response so you can retrieve the remaining results.
    ///     </p>
    ///          <p>Default: 100</p>
    ///          <p>Constraints: Minimum 20, maximum 100.</p>
    public let maxRecords: Int?
    /// <p>A value that indicates whether to show only those reservations that support Multi-AZ.</p>
    public let multiAZ: Bool?
    /// <p>The offering type filter value. Specify this parameter to show only the available offerings matching the specified offering type.</p>
    ///          <p>Valid Values: <code>"Partial Upfront" | "All Upfront" | "No Upfront" </code>
    ///          </p>
    public let offeringType: String?
    /// <p>The product description filter value. Specify this parameter to show only those reservations matching the specified product description.</p>
    public let productDescription: String?
    /// <p>The reserved DB instance identifier filter value. Specify this parameter to show only the reservation that matches the specified reservation ID.</p>
    public let reservedDBInstanceId: String?
    /// <p>The offering identifier filter value. Specify this parameter to show only purchased reservations matching the specified offering identifier.</p>
    public let reservedDBInstancesOfferingId: String?

    public init (
        dBInstanceClass: String? = nil,
        duration: String? = nil,
        filters: [Filter]? = nil,
        leaseId: String? = nil,
        marker: String? = nil,
        maxRecords: Int? = nil,
        multiAZ: Bool? = nil,
        offeringType: String? = nil,
        productDescription: String? = nil,
        reservedDBInstanceId: String? = nil,
        reservedDBInstancesOfferingId: String? = nil
    )
    {
        self.dBInstanceClass = dBInstanceClass
        self.duration = duration
        self.filters = filters
        self.leaseId = leaseId
        self.marker = marker
        self.maxRecords = maxRecords
        self.multiAZ = multiAZ
        self.offeringType = offeringType
        self.productDescription = productDescription
        self.reservedDBInstanceId = reservedDBInstanceId
        self.reservedDBInstancesOfferingId = reservedDBInstancesOfferingId
    }
}

extension DescribeReservedDBInstancesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeReservedDBInstancesInput(dBInstanceClass: \(String(describing: dBInstanceClass)), duration: \(String(describing: duration)), filters: \(String(describing: filters)), leaseId: \(String(describing: leaseId)), marker: \(String(describing: marker)), maxRecords: \(String(describing: maxRecords)), multiAZ: \(String(describing: multiAZ)), offeringType: \(String(describing: offeringType)), productDescription: \(String(describing: productDescription)), reservedDBInstanceId: \(String(describing: reservedDBInstanceId)), reservedDBInstancesOfferingId: \(String(describing: reservedDBInstancesOfferingId)))"}
}