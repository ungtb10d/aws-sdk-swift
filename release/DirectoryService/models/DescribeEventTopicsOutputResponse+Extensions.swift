// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeEventTopicsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeEventTopicsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.eventTopics = output.eventTopics
        } else {
            self.eventTopics = nil
        }
    }
}