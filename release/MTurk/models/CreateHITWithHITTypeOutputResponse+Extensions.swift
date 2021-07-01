// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateHITWithHITTypeOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreateHITWithHITTypeOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.hIT = output.hIT
        } else {
            self.hIT = nil
        }
    }
}