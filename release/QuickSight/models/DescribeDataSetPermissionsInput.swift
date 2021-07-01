// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeDataSetPermissionsInput: Equatable {
    /// <p>The AWS account ID.</p>
    public let awsAccountId: String?
    /// <p>The ID for the dataset that you want to create. This ID is unique per AWS Region for each AWS account.</p>
    public let dataSetId: String?

    public init (
        awsAccountId: String? = nil,
        dataSetId: String? = nil
    )
    {
        self.awsAccountId = awsAccountId
        self.dataSetId = dataSetId
    }
}

extension DescribeDataSetPermissionsInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeDataSetPermissionsInput(awsAccountId: \(String(describing: awsAccountId)), dataSetId: \(String(describing: dataSetId)))"}
}