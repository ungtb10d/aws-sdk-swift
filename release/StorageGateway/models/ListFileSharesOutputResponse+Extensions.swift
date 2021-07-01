// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListFileSharesOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListFileSharesOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.fileShareInfoList = output.fileShareInfoList
            self.marker = output.marker
            self.nextMarker = output.nextMarker
        } else {
            self.fileShareInfoList = nil
            self.marker = nil
            self.nextMarker = nil
        }
    }
}