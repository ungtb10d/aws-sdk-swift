// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListBucketInventoryConfigurationsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListBucketInventoryConfigurationsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.continuationToken = output.continuationToken
            self.inventoryConfigurationList = output.inventoryConfigurationList
            self.isTruncated = output.isTruncated
            self.nextContinuationToken = output.nextContinuationToken
        } else {
            self.continuationToken = nil
            self.inventoryConfigurationList = nil
            self.isTruncated = false
            self.nextContinuationToken = nil
        }
    }
}