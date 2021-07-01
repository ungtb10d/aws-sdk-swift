// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DeleteTrustOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DeleteTrustOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.trustId = output.trustId
        } else {
            self.trustId = nil
        }
    }
}