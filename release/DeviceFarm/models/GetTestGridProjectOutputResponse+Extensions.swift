// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetTestGridProjectOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetTestGridProjectOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.testGridProject = output.testGridProject
        } else {
            self.testGridProject = nil
        }
    }
}