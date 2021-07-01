// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetVPCEConfigurationInput: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the VPC endpoint configuration you want to
    ///             describe.</p>
    public let arn: String?

    public init (
        arn: String? = nil
    )
    {
        self.arn = arn
    }
}

extension GetVPCEConfigurationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetVPCEConfigurationInput(arn: \(String(describing: arn)))"}
}