// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension TerminateSessionOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: TerminateSessionOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.sessionId = output.sessionId
        } else {
            self.sessionId = nil
        }
    }
}