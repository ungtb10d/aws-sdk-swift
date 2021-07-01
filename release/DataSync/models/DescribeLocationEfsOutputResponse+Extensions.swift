// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeLocationEfsOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeLocationEfsOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.creationTime = output.creationTime
            self.ec2Config = output.ec2Config
            self.locationArn = output.locationArn
            self.locationUri = output.locationUri
        } else {
            self.creationTime = nil
            self.ec2Config = nil
            self.locationArn = nil
            self.locationUri = nil
        }
    }
}