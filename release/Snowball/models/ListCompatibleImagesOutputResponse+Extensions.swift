// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListCompatibleImagesOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListCompatibleImagesOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.compatibleImages = output.compatibleImages
            self.nextToken = output.nextToken
        } else {
            self.compatibleImages = nil
            self.nextToken = nil
        }
    }
}