// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PutInventoryOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: PutInventoryOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.message = output.message
        } else {
            self.message = nil
        }
    }
}