// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension SearchResourcesOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: SearchResourcesOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.nextToken = output.nextToken
            self.queryErrors = output.queryErrors
            self.resourceIdentifiers = output.resourceIdentifiers
        } else {
            self.nextToken = nil
            self.queryErrors = nil
            self.resourceIdentifiers = nil
        }
    }
}