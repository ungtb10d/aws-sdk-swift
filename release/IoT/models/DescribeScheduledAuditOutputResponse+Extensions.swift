// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeScheduledAuditOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeScheduledAuditOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.dayOfMonth = output.dayOfMonth
            self.dayOfWeek = output.dayOfWeek
            self.frequency = output.frequency
            self.scheduledAuditArn = output.scheduledAuditArn
            self.scheduledAuditName = output.scheduledAuditName
            self.targetCheckNames = output.targetCheckNames
        } else {
            self.dayOfMonth = nil
            self.dayOfWeek = nil
            self.frequency = nil
            self.scheduledAuditArn = nil
            self.scheduledAuditName = nil
            self.targetCheckNames = nil
        }
    }
}