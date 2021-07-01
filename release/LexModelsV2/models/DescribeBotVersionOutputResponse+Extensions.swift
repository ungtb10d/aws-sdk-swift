// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeBotVersionOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeBotVersionOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.botId = output.botId
            self.botName = output.botName
            self.botStatus = output.botStatus
            self.botVersion = output.botVersion
            self.creationDateTime = output.creationDateTime
            self.dataPrivacy = output.dataPrivacy
            self.description = output.description
            self.failureReasons = output.failureReasons
            self.idleSessionTTLInSeconds = output.idleSessionTTLInSeconds
            self.roleArn = output.roleArn
        } else {
            self.botId = nil
            self.botName = nil
            self.botStatus = nil
            self.botVersion = nil
            self.creationDateTime = nil
            self.dataPrivacy = nil
            self.description = nil
            self.failureReasons = nil
            self.idleSessionTTLInSeconds = nil
            self.roleArn = nil
        }
    }
}