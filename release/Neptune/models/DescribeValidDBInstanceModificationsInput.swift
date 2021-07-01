// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeValidDBInstanceModificationsInput: Equatable {
    /// <p>The customer identifier or the ARN of your DB instance.</p>
    public let dBInstanceIdentifier: String?

    public init (
        dBInstanceIdentifier: String? = nil
    )
    {
        self.dBInstanceIdentifier = dBInstanceIdentifier
    }
}

extension DescribeValidDBInstanceModificationsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeValidDBInstanceModificationsInput(dBInstanceIdentifier: \(String(describing: dBInstanceIdentifier)))"}
}