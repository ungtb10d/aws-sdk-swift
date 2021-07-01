// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateRelationalDatabaseFromSnapshotOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreateRelationalDatabaseFromSnapshotOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.operations = output.operations
        } else {
            self.operations = nil
        }
    }
}