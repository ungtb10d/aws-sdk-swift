// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Input configuration information for a labeling job.</p>
public struct LabelingJobInputConfig: Equatable {
    /// <p>Attributes of the data specified by the customer.</p>
    public let dataAttributes: LabelingJobDataAttributes?
    /// <p>The location of the input data.</p>
    public let dataSource: LabelingJobDataSource?

    public init (
        dataAttributes: LabelingJobDataAttributes? = nil,
        dataSource: LabelingJobDataSource? = nil
    )
    {
        self.dataAttributes = dataAttributes
        self.dataSource = dataSource
    }
}

extension LabelingJobInputConfig: CustomDebugStringConvertible {
    public var debugDescription: String {
        "LabelingJobInputConfig(dataAttributes: \(String(describing: dataAttributes)), dataSource: \(String(describing: dataSource)))"}
}