// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ListBackupsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: ListBackupsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.backupSummaries = output.backupSummaries
            self.lastEvaluatedBackupArn = output.lastEvaluatedBackupArn
        } else {
            self.backupSummaries = nil
            self.lastEvaluatedBackupArn = nil
        }
    }
}