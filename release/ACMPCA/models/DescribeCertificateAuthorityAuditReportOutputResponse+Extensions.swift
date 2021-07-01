// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeCertificateAuthorityAuditReportOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeCertificateAuthorityAuditReportOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.auditReportStatus = output.auditReportStatus
            self.createdAt = output.createdAt
            self.s3BucketName = output.s3BucketName
            self.s3Key = output.s3Key
        } else {
            self.auditReportStatus = nil
            self.createdAt = nil
            self.s3BucketName = nil
            self.s3Key = nil
        }
    }
}