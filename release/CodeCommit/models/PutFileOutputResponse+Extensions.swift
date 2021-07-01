// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PutFileOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: PutFileOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.blobId = output.blobId
            self.commitId = output.commitId
            self.treeId = output.treeId
        } else {
            self.blobId = nil
            self.commitId = nil
            self.treeId = nil
        }
    }
}