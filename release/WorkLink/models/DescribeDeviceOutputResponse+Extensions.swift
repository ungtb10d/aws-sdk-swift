// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeDeviceOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeDeviceOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.firstAccessedTime = output.firstAccessedTime
            self.lastAccessedTime = output.lastAccessedTime
            self.manufacturer = output.manufacturer
            self.model = output.model
            self.operatingSystem = output.operatingSystem
            self.operatingSystemVersion = output.operatingSystemVersion
            self.patchLevel = output.patchLevel
            self.status = output.status
            self.username = output.username
        } else {
            self.firstAccessedTime = nil
            self.lastAccessedTime = nil
            self.manufacturer = nil
            self.model = nil
            self.operatingSystem = nil
            self.operatingSystemVersion = nil
            self.patchLevel = nil
            self.status = nil
            self.username = nil
        }
    }
}