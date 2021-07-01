// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct InvokeScreenAutomationInput: Equatable {
    /// <p>The ID of the app that contains the screen automation.</p>
    public let appId: String?
    /// <p>
    ///             The request token for performing the automation action.
    ///             Request tokens help to identify duplicate requests. If a call times out or fails due to a transient error
    ///             like a failed network connection, you can retry the call with the same request token. The service ensures
    ///             that if the first call using that request token is successfully performed, the second call will return the
    ///             response of the previous call rather than performing the action again.
    ///         </p>
    ///         <p>
    ///             Note that request tokens are valid only for a few minutes. You cannot use request tokens to dedupe requests
    ///             spanning hours or days.
    ///         </p>
    public let clientRequestToken: String?
    /// <p>
    ///             The row ID for the automation if the automation is defined inside a block with source or list.
    ///         </p>
    public let rowId: String?
    /// <p>The ID of the automation action to be performed.</p>
    public let screenAutomationId: String?
    /// <p>The ID of the screen that contains the screen automation.</p>
    public let screenId: String?
    /// <p>
    ///             Variables are specified as a map where the key is the name of the variable as defined on the screen. The value is an
    ///             object which currently has only one property, rawValue, which holds the value of the variable to be passed
    ///             to the screen. Any variables defined in a screen are required to be passed in the call.
    ///         </p>
    public let variables: [String:VariableValue]?
    /// <p>The ID of the workbook that contains the screen automation.</p>
    public let workbookId: String?

    public init (
        appId: String? = nil,
        clientRequestToken: String? = nil,
        rowId: String? = nil,
        screenAutomationId: String? = nil,
        screenId: String? = nil,
        variables: [String:VariableValue]? = nil,
        workbookId: String? = nil
    )
    {
        self.appId = appId
        self.clientRequestToken = clientRequestToken
        self.rowId = rowId
        self.screenAutomationId = screenAutomationId
        self.screenId = screenId
        self.variables = variables
        self.workbookId = workbookId
    }
}

extension InvokeScreenAutomationInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "InvokeScreenAutomationInput(appId: \(String(describing: appId)), clientRequestToken: \(String(describing: clientRequestToken)), rowId: \(String(describing: rowId)), screenAutomationId: \(String(describing: screenAutomationId)), screenId: \(String(describing: screenId)), variables: \(String(describing: variables)), workbookId: \(String(describing: workbookId)))"}
}