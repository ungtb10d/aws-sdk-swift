// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeDatasetImportJobOutputResponse: Equatable {
    /// <p>Information about the dataset import job, including the status.</p>
    ///          <p>The status is one of the following values:</p>
    ///          <ul>
    ///             <li>
    ///                <p>CREATE PENDING</p>
    ///             </li>
    ///             <li>
    ///                <p>CREATE IN_PROGRESS</p>
    ///             </li>
    ///             <li>
    ///                <p>ACTIVE</p>
    ///             </li>
    ///             <li>
    ///                <p>CREATE FAILED</p>
    ///             </li>
    ///          </ul>
    public let datasetImportJob: DatasetImportJob?

    public init (
        datasetImportJob: DatasetImportJob? = nil
    )
    {
        self.datasetImportJob = datasetImportJob
    }
}

extension DescribeDatasetImportJobOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeDatasetImportJobOutputResponse(datasetImportJob: \(String(describing: datasetImportJob)))"}
}