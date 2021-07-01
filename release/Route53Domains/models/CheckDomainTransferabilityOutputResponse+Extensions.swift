// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CheckDomainTransferabilityOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CheckDomainTransferabilityOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.transferability = output.transferability
        } else {
            self.transferability = nil
        }
    }
}