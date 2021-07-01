// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateParameterGroupInput: Equatable {
    /// <p>The name of the parameter group.</p>
    public let parameterGroupName: String?
    /// <p>An array of name-value pairs for the parameters in the group. Each element in the
    ///             array represents a single parameter.</p>
    public let parameterNameValues: [ParameterNameValue]?

    public init (
        parameterGroupName: String? = nil,
        parameterNameValues: [ParameterNameValue]? = nil
    )
    {
        self.parameterGroupName = parameterGroupName
        self.parameterNameValues = parameterNameValues
    }
}

extension UpdateParameterGroupInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateParameterGroupInput(parameterGroupName: \(String(describing: parameterGroupName)), parameterNameValues: \(String(describing: parameterNameValues)))"}
}