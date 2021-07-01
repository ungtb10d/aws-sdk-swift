// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeConditionalForwardersOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeConditionalForwardersOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.conditionalForwarders = output.conditionalForwarders
        } else {
            self.conditionalForwarders = nil
        }
    }
}