// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension RunScheduledInstancesOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: RunScheduledInstancesOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.instanceIdSet = output.instanceIdSet
        } else {
            self.instanceIdSet = nil
        }
    }
}