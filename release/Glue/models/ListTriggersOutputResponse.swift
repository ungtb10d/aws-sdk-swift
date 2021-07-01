// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListTriggersOutputResponse: Equatable {
    /// <p>A continuation token, if the returned list does not contain the
    ///       last metric available.</p>
    public let nextToken: String?
    /// <p>The names of all triggers in the account, or the triggers with the specified tags.</p>
    public let triggerNames: [String]?

    public init (
        nextToken: String? = nil,
        triggerNames: [String]? = nil
    )
    {
        self.nextToken = nextToken
        self.triggerNames = triggerNames
    }
}

extension ListTriggersOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListTriggersOutputResponse(nextToken: \(String(describing: nextToken)), triggerNames: \(String(describing: triggerNames)))"}
}