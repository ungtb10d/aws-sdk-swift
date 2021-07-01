// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UpdateIntegrationOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: UpdateIntegrationOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.cacheKeyParameters = output.cacheKeyParameters
            self.cacheNamespace = output.cacheNamespace
            self.connectionId = output.connectionId
            self.connectionType = output.connectionType
            self.contentHandling = output.contentHandling
            self.credentials = output.credentials
            self.httpMethod = output.httpMethod
            self.integrationResponses = output.integrationResponses
            self.passthroughBehavior = output.passthroughBehavior
            self.requestParameters = output.requestParameters
            self.requestTemplates = output.requestTemplates
            self.timeoutInMillis = output.timeoutInMillis
            self.tlsConfig = output.tlsConfig
            self.type = output.type
            self.uri = output.uri
        } else {
            self.cacheKeyParameters = nil
            self.cacheNamespace = nil
            self.connectionId = nil
            self.connectionType = nil
            self.contentHandling = nil
            self.credentials = nil
            self.httpMethod = nil
            self.integrationResponses = nil
            self.passthroughBehavior = nil
            self.requestParameters = nil
            self.requestTemplates = nil
            self.timeoutInMillis = 0
            self.tlsConfig = nil
            self.type = nil
            self.uri = nil
        }
    }
}