// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetSendQuotaOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetSendQuotaOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.max24HourSend = output.max24HourSend
            self.maxSendRate = output.maxSendRate
            self.sentLast24Hours = output.sentLast24Hours
        } else {
            self.max24HourSend = 0.0
            self.maxSendRate = 0.0
            self.sentLast24Hours = 0.0
        }
    }
}