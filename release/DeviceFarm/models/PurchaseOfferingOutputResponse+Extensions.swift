// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PurchaseOfferingOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: PurchaseOfferingOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.offeringTransaction = output.offeringTransaction
        } else {
            self.offeringTransaction = nil
        }
    }
}