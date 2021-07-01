// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListQueryExecutionsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListQueryExecutionsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.nextToken = output.nextToken
            self.queryExecutionIds = output.queryExecutionIds
        } else {
            self.nextToken = nil
            self.queryExecutionIds = nil
        }
    }
}