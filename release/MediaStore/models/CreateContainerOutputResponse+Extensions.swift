// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateContainerOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreateContainerOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.container = output.container
        } else {
            self.container = nil
        }
    }
}