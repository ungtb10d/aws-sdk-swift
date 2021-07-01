// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListEventTrackersOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListEventTrackersOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.eventTrackers = output.eventTrackers
            self.nextToken = output.nextToken
        } else {
            self.eventTrackers = nil
            self.nextToken = nil
        }
    }
}