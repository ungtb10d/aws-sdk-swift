// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CreateReplicationConfigurationTemplateOutputResponse: HttpResponseBinding {
    public init (httpResponse: HttpResponse, decoder: ResponseDecoder? = nil) throws {
        if case .data(let data) = httpResponse.body,
            let unwrappedData = data,
            let responseDecoder = decoder {
            let output: CreateReplicationConfigurationTemplateOutputResponseBody = try responseDecoder.decode(responseBody: unwrappedData)
            self.arn = output.arn
            self.associateDefaultSecurityGroup = output.associateDefaultSecurityGroup
            self.bandwidthThrottling = output.bandwidthThrottling
            self.createPublicIP = output.createPublicIP
            self.dataPlaneRouting = output.dataPlaneRouting
            self.defaultLargeStagingDiskType = output.defaultLargeStagingDiskType
            self.ebsEncryption = output.ebsEncryption
            self.ebsEncryptionKeyArn = output.ebsEncryptionKeyArn
            self.replicationConfigurationTemplateID = output.replicationConfigurationTemplateID
            self.replicationServerInstanceType = output.replicationServerInstanceType
            self.replicationServersSecurityGroupsIDs = output.replicationServersSecurityGroupsIDs
            self.stagingAreaSubnetId = output.stagingAreaSubnetId
            self.stagingAreaTags = output.stagingAreaTags
            self.tags = output.tags
            self.useDedicatedReplicationServer = output.useDedicatedReplicationServer
        } else {
            self.arn = nil
            self.associateDefaultSecurityGroup = nil
            self.bandwidthThrottling = 0
            self.createPublicIP = nil
            self.dataPlaneRouting = nil
            self.defaultLargeStagingDiskType = nil
            self.ebsEncryption = nil
            self.ebsEncryptionKeyArn = nil
            self.replicationConfigurationTemplateID = nil
            self.replicationServerInstanceType = nil
            self.replicationServersSecurityGroupsIDs = nil
            self.stagingAreaSubnetId = nil
            self.stagingAreaTags = nil
            self.tags = nil
            self.useDedicatedReplicationServer = nil
        }
    }
}