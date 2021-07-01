// Code generated by smithy-swift-codegen. DO NOT EDIT!



public struct GetIPSetInput: Equatable {
    /// <p>A unique identifier for the set. This ID is returned in the responses to create and list commands. You provide it to operations like update and delete.</p>
    public let id: String?
    /// <p>The name of the IP set. You cannot change the name of an <code>IPSet</code> after you create it.</p>
    public let name: String?
    /// <p>Specifies whether this is for an AWS CloudFront distribution or for a regional application. A regional application can be an Application Load Balancer (ALB), an API Gateway REST API, or an AppSync GraphQL API.  </p>
    ///          <p>To work with CloudFront, you must also specify the Region US East (N. Virginia) as follows: </p>
    ///          <ul>
    ///             <li>
    ///                <p>CLI - Specify the Region when you use the CloudFront scope: <code>--scope=CLOUDFRONT --region=us-east-1</code>. </p>
    ///             </li>
    ///             <li>
    ///                <p>API and SDKs - For all calls, use the Region endpoint us-east-1. </p>
    ///             </li>
    ///          </ul>
    public let scope: Scope?

    public init (
        id: String? = nil,
        name: String? = nil,
        scope: Scope? = nil
    )
    {
        self.id = id
        self.name = name
        self.scope = scope
    }
}

extension GetIPSetInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetIPSetInput(id: \(String(describing: id)), name: \(String(describing: name)), scope: \(String(describing: scope)))"}
}