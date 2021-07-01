// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListApplicationRevisionsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListApplicationRevisionsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.nextToken = output.nextToken
            self.revisions = output.revisions
        } else {
            self.nextToken = nil
            self.revisions = nil
        }
    }
}