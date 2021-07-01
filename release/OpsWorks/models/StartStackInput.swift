// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct StartStackInput: Equatable {
    /// <p>The stack ID.</p>
    public let stackId: String?

    public init (
        stackId: String? = nil
    )
    {
        self.stackId = stackId
    }
}

extension StartStackInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "StartStackInput(stackId: \(String(describing: stackId)))"}
}