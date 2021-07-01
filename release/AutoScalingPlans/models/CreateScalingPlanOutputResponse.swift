// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct CreateScalingPlanOutputResponse: Equatable {
    /// <p>The version number of the scaling plan. This value is always <code>1</code>. Currently,
    ///          you cannot have multiple scaling plan versions.</p>
    public let scalingPlanVersion: Int?

    public init (
        scalingPlanVersion: Int? = nil
    )
    {
        self.scalingPlanVersion = scalingPlanVersion
    }
}

extension CreateScalingPlanOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateScalingPlanOutputResponse(scalingPlanVersion: \(String(describing: scalingPlanVersion)))"}
}