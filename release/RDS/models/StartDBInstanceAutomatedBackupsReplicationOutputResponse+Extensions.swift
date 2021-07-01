// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension StartDBInstanceAutomatedBackupsReplicationOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: StartDBInstanceAutomatedBackupsReplicationOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.dBInstanceAutomatedBackup = output.dBInstanceAutomatedBackup
        } else {
            self.dBInstanceAutomatedBackup = nil
        }
    }
}