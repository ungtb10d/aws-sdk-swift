// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DescribeAssetOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: DescribeAssetOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.assetArn = output.assetArn
            self.assetCompositeModels = output.assetCompositeModels
            self.assetCreationDate = output.assetCreationDate
            self.assetHierarchies = output.assetHierarchies
            self.assetId = output.assetId
            self.assetLastUpdateDate = output.assetLastUpdateDate
            self.assetModelId = output.assetModelId
            self.assetName = output.assetName
            self.assetProperties = output.assetProperties
            self.assetStatus = output.assetStatus
        } else {
            self.assetArn = nil
            self.assetCompositeModels = nil
            self.assetCreationDate = nil
            self.assetHierarchies = nil
            self.assetId = nil
            self.assetLastUpdateDate = nil
            self.assetModelId = nil
            self.assetName = nil
            self.assetProperties = nil
            self.assetStatus = nil
        }
    }
}