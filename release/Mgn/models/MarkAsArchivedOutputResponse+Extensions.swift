// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension MarkAsArchivedOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: MarkAsArchivedOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.arn = output.arn
            self.dataReplicationInfo = output.dataReplicationInfo
            self.isArchived = output.isArchived
            self.launchedInstance = output.launchedInstance
            self.lifeCycle = output.lifeCycle
            self.sourceProperties = output.sourceProperties
            self.sourceServerID = output.sourceServerID
            self.tags = output.tags
        } else {
            self.arn = nil
            self.dataReplicationInfo = nil
            self.isArchived = nil
            self.launchedInstance = nil
            self.lifeCycle = nil
            self.sourceProperties = nil
            self.sourceServerID = nil
            self.tags = nil
        }
    }
}