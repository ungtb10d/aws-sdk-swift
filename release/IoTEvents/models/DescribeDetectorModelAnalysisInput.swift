// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DescribeDetectorModelAnalysisInput: Equatable {
    /// <p>The ID of the analysis result that you want to retrieve.</p>
    public let analysisId: String?

    public init (
        analysisId: String? = nil
    )
    {
        self.analysisId = analysisId
    }
}

extension DescribeDetectorModelAnalysisInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeDetectorModelAnalysisInput(analysisId: \(String(describing: analysisId)))"}
}