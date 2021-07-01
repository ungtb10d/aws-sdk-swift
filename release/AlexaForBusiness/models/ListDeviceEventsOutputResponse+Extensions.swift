// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListDeviceEventsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListDeviceEventsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.deviceEvents = output.deviceEvents
            self.nextToken = output.nextToken
        } else {
            self.deviceEvents = nil
            self.nextToken = nil
        }
    }
}