// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// <p>A rate-based rule tracks the rate of requests for each originating IP address, and triggers the rule action when the rate exceeds a limit that you specify on the number of requests in any 5-minute time span. You can use this to put a temporary block on requests from an IP address that is sending excessive requests.</p>
///          <p>When the rule action triggers, AWS WAF blocks additional requests from the IP address until the request rate falls below the limit.</p>
///          <p>You can optionally nest another statement inside the rate-based statement, to narrow the scope of the rule so that it only counts requests that match the nested statement. For example, based on recent requests that you have seen from an attacker, you might create a rate-based rule with a nested AND rule statement that contains the following nested statements:</p>
///          <ul>
///             <li>
///                <p>An IP match statement with an IP set that specified the address 192.0.2.44.</p>
///             </li>
///             <li>
///                <p>A string match statement that searches in the User-Agent header for the string BadBot.</p>
///             </li>
///          </ul>
///          <p>In this rate-based rule, you also define a rate limit. For this example, the rate limit is 1,000. Requests that meet both of the conditions in the statements are counted. If the count exceeds 1,000 requests per five minutes, the rule action triggers. Requests that do not meet both conditions are not counted towards the rate limit and are not affected by this rule.</p>
///          <p>You cannot nest a <code>RateBasedStatement</code>, for example for use inside a <code>NotStatement</code> or <code>OrStatement</code>. It can only be referenced as a top-level statement within a rule.</p>
public struct RateBasedStatement: Equatable {
    /// <p>Setting that indicates how to aggregate the request counts. The options are the following:</p>
    ///          <ul>
    ///             <li>
    ///                <p>IP - Aggregate the request counts on the IP address from the web request origin.</p>
    ///             </li>
    ///             <li>
    ///                <p>FORWARDED_IP - Aggregate the request counts on the first IP address in an HTTP header. If you use this, configure the <code>ForwardedIPConfig</code>, to specify the header to use. </p>
    ///             </li>
    ///          </ul>
    public let aggregateKeyType: RateBasedStatementAggregateKeyType?
    /// <p>The configuration for inspecting IP addresses in an HTTP header that you specify, instead of using the IP address that's reported by the web request origin. Commonly, this is the X-Forwarded-For (XFF) header, but you can specify any header name. </p>
    ///
    ///          <note>
    ///             <p>If the specified header isn't present in the request, AWS WAF doesn't apply the rule to the web request at all.</p>
    ///          </note>
    ///
    ///
    ///          <p>This is required if <code>AggregateKeyType</code> is set to <code>FORWARDED_IP</code>.</p>
    public let forwardedIPConfig: ForwardedIPConfig?
    /// <p>The limit on requests per 5-minute period for a single originating IP address. If the statement includes a <code>ScopeDownStatement</code>, this limit is applied only to the requests that match the statement.</p>
    public let limit: Int
    /// <p>An optional nested statement that narrows the scope of the rate-based statement to matching web requests. This can be any nestable statement, and you can nest statements at any level below this scope-down statement.</p>
    public let scopeDownStatement: Box<Statement>?

    public init (
        aggregateKeyType: RateBasedStatementAggregateKeyType? = nil,
        forwardedIPConfig: ForwardedIPConfig? = nil,
        limit: Int = 0,
        scopeDownStatement: Box<Statement>? = nil
    )
    {
        self.aggregateKeyType = aggregateKeyType
        self.forwardedIPConfig = forwardedIPConfig
        self.limit = limit
        self.scopeDownStatement = scopeDownStatement
    }
}

extension RateBasedStatement: CustomDebugStringConvertible {
    public var debugDescription: String {
        "RateBasedStatement(aggregateKeyType: \(String(describing: aggregateKeyType)), forwardedIPConfig: \(String(describing: forwardedIPConfig)), limit: \(String(describing: limit)), scopeDownStatement: \(String(describing: scopeDownStatement)))"}
}