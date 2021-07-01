// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Represents the input to <a>ModifyDBClusterParameterGroup</a>.</p>
public struct ModifyDBClusterParameterGroupInput: Equatable {
    /// <p>The name of the cluster parameter group to modify.</p>
    public let dBClusterParameterGroupName: String?
    /// <p>A list of parameters in the cluster parameter group to modify.</p>
    public let parameters: [Parameter]?

    public init (
        dBClusterParameterGroupName: String? = nil,
        parameters: [Parameter]? = nil
    )
    {
        self.dBClusterParameterGroupName = dBClusterParameterGroupName
        self.parameters = parameters
    }
}

extension ModifyDBClusterParameterGroupInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ModifyDBClusterParameterGroupInput(dBClusterParameterGroupName: \(String(describing: dBClusterParameterGroupName)), parameters: \(String(describing: parameters)))"}
}