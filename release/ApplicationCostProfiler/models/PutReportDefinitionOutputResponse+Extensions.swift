// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PutReportDefinitionOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: PutReportDefinitionOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.reportId = output.reportId
        } else {
            self.reportId = nil
        }
    }
}