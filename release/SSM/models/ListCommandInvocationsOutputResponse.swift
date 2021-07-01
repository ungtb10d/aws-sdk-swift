// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListCommandInvocationsOutputResponse: Equatable {
    /// <p>(Optional) A list of all invocations. </p>
    public let commandInvocations: [CommandInvocation]?
    /// <p>(Optional) The token for the next set of items to return. (You received this token from a
    ///    previous call.)</p>
    public let nextToken: String?

    public init (
        commandInvocations: [CommandInvocation]? = nil,
        nextToken: String? = nil
    )
    {
        self.commandInvocations = commandInvocations
        self.nextToken = nextToken
    }
}

extension ListCommandInvocationsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListCommandInvocationsOutputResponse(commandInvocations: \(String(describing: commandInvocations)), nextToken: \(String(describing: nextToken)))"}
}