// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeAppOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeAppOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.appArn = output.appArn
            self.appName = output.appName
            self.appType = output.appType
            self.creationTime = output.creationTime
            self.domainId = output.domainId
            self.failureReason = output.failureReason
            self.lastHealthCheckTimestamp = output.lastHealthCheckTimestamp
            self.lastUserActivityTimestamp = output.lastUserActivityTimestamp
            self.resourceSpec = output.resourceSpec
            self.status = output.status
            self.userProfileName = output.userProfileName
        } else {
            self.appArn = nil
            self.appName = nil
            self.appType = nil
            self.creationTime = nil
            self.domainId = nil
            self.failureReason = nil
            self.lastHealthCheckTimestamp = nil
            self.lastUserActivityTimestamp = nil
            self.resourceSpec = nil
            self.status = nil
            self.userProfileName = nil
        }
    }
}