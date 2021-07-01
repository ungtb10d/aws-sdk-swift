// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The response to an <a>UpdateXssMatchSets</a> request.</p>
public struct UpdateXssMatchSetOutputResponse: Equatable {
    /// <p>The <code>ChangeToken</code> that you used to submit the <code>UpdateXssMatchSet</code> request. You can also use this value
    /// 			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    public let changeToken: String?

    public init (
        changeToken: String? = nil
    )
    {
        self.changeToken = changeToken
    }
}

extension UpdateXssMatchSetOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "UpdateXssMatchSetOutputResponse(changeToken: \(String(describing: changeToken)))"}
}