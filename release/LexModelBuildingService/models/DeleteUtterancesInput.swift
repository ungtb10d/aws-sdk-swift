// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct DeleteUtterancesInput: Equatable {
    /// <p>The name of the bot that stored the utterances.</p>
    public let botName: String?
    /// <p> The unique identifier for the user that made the utterances. This
    ///       is the user ID that was sent in the <a href="http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostContent.html">PostContent</a> or <a href="http://docs.aws.amazon.com/lex/latest/dg/API_runtime_PostText.html">PostText</a> operation request that contained the
    ///       utterance.</p>
    public let userId: String?

    public init (
        botName: String? = nil,
        userId: String? = nil
    )
    {
        self.botName = botName
        self.userId = userId
    }
}

extension DeleteUtterancesInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DeleteUtterancesInput(botName: \(String(describing: botName)), userId: \(String(describing: userId)))"}
}