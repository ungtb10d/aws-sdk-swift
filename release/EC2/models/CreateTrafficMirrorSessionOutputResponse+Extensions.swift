// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateTrafficMirrorSessionOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreateTrafficMirrorSessionOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.clientToken = output.clientToken
            self.trafficMirrorSession = output.trafficMirrorSession
        } else {
            self.clientToken = nil
            self.trafficMirrorSession = nil
        }
    }
}