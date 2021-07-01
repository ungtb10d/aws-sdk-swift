// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListPublishingDestinationsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListPublishingDestinationsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.destinations = output.destinations
            self.nextToken = output.nextToken
        } else {
            self.destinations = nil
            self.nextToken = nil
        }
    }
}