// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateSuiteDefinitionInput: Equatable {
    /// <p>Updates a Device Advisor test suite with suite definition configuration.</p>
    public let suiteDefinitionConfiguration: SuiteDefinitionConfiguration?
    /// <p>Suite definition Id of the test suite to be updated.</p>
    public let suiteDefinitionId: String?

    public init (
        suiteDefinitionConfiguration: SuiteDefinitionConfiguration? = nil,
        suiteDefinitionId: String? = nil
    )
    {
        self.suiteDefinitionConfiguration = suiteDefinitionConfiguration
        self.suiteDefinitionId = suiteDefinitionId
    }
}

extension UpdateSuiteDefinitionInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateSuiteDefinitionInput(suiteDefinitionConfiguration: \(String(describing: suiteDefinitionConfiguration)), suiteDefinitionId: \(String(describing: suiteDefinitionId)))"}
}