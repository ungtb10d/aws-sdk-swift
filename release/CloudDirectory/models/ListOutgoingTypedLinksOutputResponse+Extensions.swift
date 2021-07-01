// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListOutgoingTypedLinksOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListOutgoingTypedLinksOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.nextToken = output.nextToken
            self.typedLinkSpecifiers = output.typedLinkSpecifiers
        } else {
            self.nextToken = nil
            self.typedLinkSpecifiers = nil
        }
    }
}