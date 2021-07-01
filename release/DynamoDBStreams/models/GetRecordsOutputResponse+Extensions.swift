// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetRecordsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetRecordsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.nextShardIterator = output.nextShardIterator
            self.records = output.records
        } else {
            self.nextShardIterator = nil
            self.records = nil
        }
    }
}