// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetSuiteRunReportInput: Equatable {
    /// <p>Suite definition Id of the test suite.</p>
    public let suiteDefinitionId: String?
    /// <p>Suite run Id of the test suite run.</p>
    public let suiteRunId: String?

    public init (
        suiteDefinitionId: String? = nil,
        suiteRunId: String? = nil
    )
    {
        self.suiteDefinitionId = suiteDefinitionId
        self.suiteRunId = suiteRunId
    }
}

extension GetSuiteRunReportInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetSuiteRunReportInput(suiteDefinitionId: \(String(describing: suiteDefinitionId)), suiteRunId: \(String(describing: suiteRunId)))"}
}