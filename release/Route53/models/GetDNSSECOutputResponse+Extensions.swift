// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetDNSSECOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetDNSSECOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.keySigningKeys = output.keySigningKeys
            self.status = output.status
        } else {
            self.keySigningKeys = nil
            self.status = nil
        }
    }
}