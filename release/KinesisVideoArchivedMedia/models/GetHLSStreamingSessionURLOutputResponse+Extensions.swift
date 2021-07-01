// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetHLSStreamingSessionURLOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetHLSStreamingSessionURLOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.hLSStreamingSessionURL = output.hLSStreamingSessionURL
        } else {
            self.hLSStreamingSessionURL = nil
        }
    }
}