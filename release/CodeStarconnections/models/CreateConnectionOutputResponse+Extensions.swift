// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateConnectionOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreateConnectionOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.connectionArn = output.connectionArn
            self.tags = output.tags
        } else {
            self.connectionArn = nil
            self.tags = nil
        }
    }
}