// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PurchaseReservedElasticsearchInstanceOfferingOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: PurchaseReservedElasticsearchInstanceOfferingOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.reservationName = output.reservationName
            self.reservedElasticsearchInstanceId = output.reservedElasticsearchInstanceId
        } else {
            self.reservationName = nil
            self.reservedElasticsearchInstanceId = nil
        }
    }
}