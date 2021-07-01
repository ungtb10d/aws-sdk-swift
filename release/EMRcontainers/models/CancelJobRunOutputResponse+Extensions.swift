// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CancelJobRunOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CancelJobRunOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.id = output.id
            self.virtualClusterId = output.virtualClusterId
        } else {
            self.id = nil
            self.virtualClusterId = nil
        }
    }
}