// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct UpdateBotAliasInput: Equatable {
    /// <p>The unique identifier of the bot alias.</p>
    public let botAliasId: String?
    /// <p>The new Lambda functions to use in each locale for the bot
    ///          alias.</p>
    public let botAliasLocaleSettings: [String:BotAliasLocaleSettings]?
    /// <p>The new name to assign to the bot alias.</p>
    public let botAliasName: String?
    /// <p>The identifier of the bot with the updated alias.</p>
    public let botId: String?
    /// <p>The new bot version to assign to the bot alias.</p>
    public let botVersion: String?
    /// <p>The new settings for storing conversation logs in Amazon CloudWatch Logs and
    ///          Amazon S3 buckets.</p>
    public let conversationLogSettings: ConversationLogSettings?
    /// <p>The new description to assign to the bot alias.</p>
    public let description: String?
    /// <p>Determines whether Amazon Lex will use Amazon Comprehend to detect the sentiment of
    ///          user utterances.</p>
    public let sentimentAnalysisSettings: SentimentAnalysisSettings?

    public init (
        botAliasId: String? = nil,
        botAliasLocaleSettings: [String:BotAliasLocaleSettings]? = nil,
        botAliasName: String? = nil,
        botId: String? = nil,
        botVersion: String? = nil,
        conversationLogSettings: ConversationLogSettings? = nil,
        description: String? = nil,
        sentimentAnalysisSettings: SentimentAnalysisSettings? = nil
    )
    {
        self.botAliasId = botAliasId
        self.botAliasLocaleSettings = botAliasLocaleSettings
        self.botAliasName = botAliasName
        self.botId = botId
        self.botVersion = botVersion
        self.conversationLogSettings = conversationLogSettings
        self.description = description
        self.sentimentAnalysisSettings = sentimentAnalysisSettings
    }
}

extension UpdateBotAliasInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateBotAliasInput(botAliasId: \(String(describing: botAliasId)), botAliasLocaleSettings: \(String(describing: botAliasLocaleSettings)), botAliasName: \(String(describing: botAliasName)), botId: \(String(describing: botId)), botVersion: \(String(describing: botVersion)), conversationLogSettings: \(String(describing: conversationLogSettings)), description: \(String(describing: description)), sentimentAnalysisSettings: \(String(describing: sentimentAnalysisSettings)))"}
}