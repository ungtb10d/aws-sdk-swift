// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension BatchImportFindingsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: BatchImportFindingsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.failedCount = output.failedCount
            self.failedFindings = output.failedFindings
            self.successCount = output.successCount
        } else {
            self.failedCount = 0
            self.failedFindings = nil
            self.successCount = 0
        }
    }
}