// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UpdateUploadOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: UpdateUploadOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.upload = output.upload
        } else {
            self.upload = nil
        }
    }
}