// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetDataCatalogEncryptionSettingsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetDataCatalogEncryptionSettingsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.dataCatalogEncryptionSettings = output.dataCatalogEncryptionSettings
        } else {
            self.dataCatalogEncryptionSettings = nil
        }
    }
}