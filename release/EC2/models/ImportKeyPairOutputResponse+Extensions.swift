// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ImportKeyPairOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ImportKeyPairOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.keyFingerprint = output.keyFingerprint
            self.keyName = output.keyName
            self.keyPairId = output.keyPairId
            self.tags = output.tags
        } else {
            self.keyFingerprint = nil
            self.keyName = nil
            self.keyPairId = nil
            self.tags = nil
        }
    }
}