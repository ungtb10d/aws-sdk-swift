// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension UpdateApnsVoipSandboxChannelOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
           let unwrappedData = data {
            if let responseDecoder = decoder {
                let output: APNSVoipSandboxChannelResponse = try responseDecoder.decode(responseBody: unwrappedData)
                self.aPNSVoipSandboxChannelResponse = output
            } else {
                self.aPNSVoipSandboxChannelResponse = nil
            }
        } else {
            self.aPNSVoipSandboxChannelResponse = nil
        }
    }
}