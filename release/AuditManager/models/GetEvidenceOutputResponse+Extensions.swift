// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetEvidenceOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetEvidenceOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.evidence = output.evidence
        } else {
            self.evidence = nil
        }
    }
}