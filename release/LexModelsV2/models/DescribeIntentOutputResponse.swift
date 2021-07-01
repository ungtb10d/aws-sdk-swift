// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

public struct DescribeIntentOutputResponse: Equatable {
    /// <p>The identifier of the bot associated with the intent.</p>
    public let botId: String?
    /// <p>The version of the bot associated with the intent.</p>
    public let botVersion: String?
    /// <p>A timestamp of the date and time that the intent was created.</p>
    public let creationDateTime: Date?
    /// <p>The description of the intent.</p>
    public let description: String?
    /// <p>The Lambda function called during each turn of a conversation with
    ///          the intent.</p>
    public let dialogCodeHook: DialogCodeHookSettings?
    /// <p>The Lambda function called when the intent is complete and ready for
    ///          fulfillment.</p>
    public let fulfillmentCodeHook: FulfillmentCodeHookSettings?
    /// <p>A list of contexts that must be active for the intent to be
    ///          considered for sending to the user.</p>
    public let inputContexts: [InputContext]?
    /// <p>The response that Amazon Lex sends to when the intent is closed.</p>
    public let intentClosingSetting: IntentClosingSetting?
    /// <p>Prompts that Amazon Lex sends to the user to confirm completion of an
    ///          intent.</p>
    public let intentConfirmationSetting: IntentConfirmationSetting?
    /// <p>The unique identifier assigned to the intent when it was
    ///          created.</p>
    public let intentId: String?
    /// <p>The name specified for the intent.</p>
    public let intentName: String?
    /// <p>Configuration information required to use the
    ///             <code>AMAZON.KendraSearchIntent</code> intent.</p>
    public let kendraConfiguration: KendraConfiguration?
    /// <p>A timestamp of the date and time that the intent was last
    ///          updated.</p>
    public let lastUpdatedDateTime: Date?
    /// <p>The language and locale specified for the intent.</p>
    public let localeId: String?
    /// <p>A list of contexts that are activated when the intent is
    ///          fulfilled.</p>
    public let outputContexts: [OutputContext]?
    /// <p>The identifier of the built-in intent that this intent is derived
    ///          from, if any.</p>
    public let parentIntentSignature: String?
    /// <p>User utterances that trigger this intent.</p>
    public let sampleUtterances: [SampleUtterance]?
    /// <p>The list that determines the priority that slots should be elicited
    ///          from the user.</p>
    public let slotPriorities: [SlotPriority]?

    public init (
        botId: String? = nil,
        botVersion: String? = nil,
        creationDateTime: Date? = nil,
        description: String? = nil,
        dialogCodeHook: DialogCodeHookSettings? = nil,
        fulfillmentCodeHook: FulfillmentCodeHookSettings? = nil,
        inputContexts: [InputContext]? = nil,
        intentClosingSetting: IntentClosingSetting? = nil,
        intentConfirmationSetting: IntentConfirmationSetting? = nil,
        intentId: String? = nil,
        intentName: String? = nil,
        kendraConfiguration: KendraConfiguration? = nil,
        lastUpdatedDateTime: Date? = nil,
        localeId: String? = nil,
        outputContexts: [OutputContext]? = nil,
        parentIntentSignature: String? = nil,
        sampleUtterances: [SampleUtterance]? = nil,
        slotPriorities: [SlotPriority]? = nil
    )
    {
        self.botId = botId
        self.botVersion = botVersion
        self.creationDateTime = creationDateTime
        self.description = description
        self.dialogCodeHook = dialogCodeHook
        self.fulfillmentCodeHook = fulfillmentCodeHook
        self.inputContexts = inputContexts
        self.intentClosingSetting = intentClosingSetting
        self.intentConfirmationSetting = intentConfirmationSetting
        self.intentId = intentId
        self.intentName = intentName
        self.kendraConfiguration = kendraConfiguration
        self.lastUpdatedDateTime = lastUpdatedDateTime
        self.localeId = localeId
        self.outputContexts = outputContexts
        self.parentIntentSignature = parentIntentSignature
        self.sampleUtterances = sampleUtterances
        self.slotPriorities = slotPriorities
    }
}

extension DescribeIntentOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "DescribeIntentOutputResponse(botId: \(String(describing: botId)), botVersion: \(String(describing: botVersion)), creationDateTime: \(String(describing: creationDateTime)), description: \(String(describing: description)), dialogCodeHook: \(String(describing: dialogCodeHook)), fulfillmentCodeHook: \(String(describing: fulfillmentCodeHook)), inputContexts: \(String(describing: inputContexts)), intentClosingSetting: \(String(describing: intentClosingSetting)), intentConfirmationSetting: \(String(describing: intentConfirmationSetting)), intentId: \(String(describing: intentId)), intentName: \(String(describing: intentName)), kendraConfiguration: \(String(describing: kendraConfiguration)), lastUpdatedDateTime: \(String(describing: lastUpdatedDateTime)), localeId: \(String(describing: localeId)), outputContexts: \(String(describing: outputContexts)), parentIntentSignature: \(String(describing: parentIntentSignature)), sampleUtterances: \(String(describing: sampleUtterances)), slotPriorities: \(String(describing: slotPriorities)))"}
}