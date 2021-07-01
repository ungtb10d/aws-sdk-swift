// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListAutoMLJobsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListAutoMLJobsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.autoMLJobSummaries = output.autoMLJobSummaries
            self.nextToken = output.nextToken
        } else {
            self.autoMLJobSummaries = nil
            self.nextToken = nil
        }
    }
}