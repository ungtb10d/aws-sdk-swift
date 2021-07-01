// Code generated by smithy-swift-codegen. DO NOT EDIT!



/// <p>A collection of <a>RequestValidator</a> resources of a given <a>RestApi</a>.</p>
///         <div class="remarks">
///           <p>In OpenAPI, the <a>RequestValidators</a> of an API is defined by the <a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions.html#api-gateway-swagger-extensions-request-validators.html">x-amazon-apigateway-request-validators</a> extension.</p>
///         </div>
///         <div class="seeAlso"><a href="https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-method-request-validation.html">Enable Basic Request Validation in API Gateway</a></div>
public struct GetRequestValidatorsOutputResponse: Equatable {
    /// <p>The current page of elements from this collection.</p>
    public let items: [RequestValidator]?
    /// <p>The current pagination position in the paged result set.</p>
    public let position: String?

    public init (
        items: [RequestValidator]? = nil,
        position: String? = nil
    )
    {
        self.items = items
        self.position = position
    }
}

extension GetRequestValidatorsOutputResponse: CustomDebugStringConvertible {
    public var debugDescription: String {
        "GetRequestValidatorsOutputResponse(items: \(String(describing: items)), position: \(String(describing: position)))"}
}