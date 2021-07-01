// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeWebsiteCertificateAuthorityOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeWebsiteCertificateAuthorityOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.certificate = output.certificate
            self.createdTime = output.createdTime
            self.displayName = output.displayName
        } else {
            self.certificate = nil
            self.createdTime = nil
            self.displayName = nil
        }
    }
}