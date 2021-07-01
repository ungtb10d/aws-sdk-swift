// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct ListListenersInput: Equatable {
    /// <p>The Amazon Resource Name (ARN) of the accelerator for which you want to list listener objects.</p>
    public let acceleratorArn: String?
    /// <p>The number of listener objects that you want to return with this call. The default value is 10.</p>
    public let maxResults: Int?
    /// <p>The token for the next set of results. You receive this token from a previous call.</p>
    public let nextToken: String?

    public init (
        acceleratorArn: String? = nil,
        maxResults: Int? = nil,
        nextToken: String? = nil
    )
    {
        self.acceleratorArn = acceleratorArn
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension ListListenersInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "ListListenersInput(acceleratorArn: \(String(describing: acceleratorArn)), maxResults: \(String(describing: maxResults)), nextToken: \(String(describing: nextToken)))"}
}