// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateVoiceConnectorGroupOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreateVoiceConnectorGroupOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.voiceConnectorGroup = output.voiceConnectorGroup
        } else {
            self.voiceConnectorGroup = nil
        }
    }
}