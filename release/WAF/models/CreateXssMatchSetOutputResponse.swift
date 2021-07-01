// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>The response to a <code>CreateXssMatchSet</code> request.</p>
public struct CreateXssMatchSetOutputResponse: Equatable {
    /// <p>The <code>ChangeToken</code> that you used to submit the <code>CreateXssMatchSet</code> request. You can also use this value
    /// 			to query the status of the request. For more information, see <a>GetChangeTokenStatus</a>.</p>
    public let changeToken: String?
    /// <p>An <a>XssMatchSet</a>.</p>
    public let xssMatchSet: XssMatchSet?

    public init (
        changeToken: String? = nil,
        xssMatchSet: XssMatchSet? = nil
    )
    {
        self.changeToken = changeToken
        self.xssMatchSet = xssMatchSet
    }
}

extension CreateXssMatchSetOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "CreateXssMatchSetOutputResponse(changeToken: \(String(describing: changeToken)), xssMatchSet: \(String(describing: xssMatchSet)))"}
}