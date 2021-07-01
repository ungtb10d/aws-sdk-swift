// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeNodegroupOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeNodegroupOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.nodegroup = output.nodegroup
        } else {
            self.nodegroup = nil
        }
    }
}