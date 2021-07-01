// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListBuildBatchesForProjectOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListBuildBatchesForProjectOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.ids = output.ids
            self.nextToken = output.nextToken
        } else {
            self.ids = nil
            self.nextToken = nil
        }
    }
}