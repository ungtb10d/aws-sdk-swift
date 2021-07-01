// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>Request to describe a <a>MethodResponse</a> resource.</p>
public struct GetMethodResponseInput: Equatable {
    /// <p>[Required] The HTTP verb of the <a>Method</a> resource.</p>
    public let httpMethod: String?
    /// <p>[Required] The <a>Resource</a> identifier for the <a>MethodResponse</a> resource.</p>
    public let resourceId: String?
    /// <p>[Required] The string identifier of the associated <a>RestApi</a>.</p>
    public let restApiId: String?
    /// <p>[Required] The status code for the <a>MethodResponse</a> resource.</p>
    public let statusCode: String?

    public init (
        httpMethod: String? = nil,
        resourceId: String? = nil,
        restApiId: String? = nil,
        statusCode: String? = nil
    )
    {
        self.httpMethod = httpMethod
        self.resourceId = resourceId
        self.restApiId = restApiId
        self.statusCode = statusCode
    }
}

extension GetMethodResponseInput: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetMethodResponseInput(httpMethod: \(String(describing: httpMethod)), resourceId: \(String(describing: resourceId)), restApiId: \(String(describing: restApiId)), statusCode: \(String(describing: statusCode)))"}
}