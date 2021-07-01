// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GetLogLevelsByResourceTypesOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: GetLogLevelsByResourceTypesOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.defaultLogLevel = output.defaultLogLevel
            self.wirelessDeviceLogOptions = output.wirelessDeviceLogOptions
            self.wirelessGatewayLogOptions = output.wirelessGatewayLogOptions
        } else {
            self.defaultLogLevel = nil
            self.wirelessDeviceLogOptions = nil
            self.wirelessGatewayLogOptions = nil
        }
    }
}