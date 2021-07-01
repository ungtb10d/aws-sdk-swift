// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetMethodResponseOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetMethodResponseOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.responseModels = output.responseModels
            self.responseParameters = output.responseParameters
            self.statusCode = output.statusCode
        } else {
            self.responseModels = nil
            self.responseParameters = nil
            self.statusCode = nil
        }
    }
}