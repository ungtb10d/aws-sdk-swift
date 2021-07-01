// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeVpcEndpointServicesOutputResponseBody: Equatable {
    public let serviceNames: [String]?
    public let serviceDetails: [ServiceDetail]?
    public let nextToken: String?
}

extension DescribeVpcEndpointServicesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "nextToken"
        case serviceDetails = "serviceDetailSet"
        case serviceNames = "serviceNameSet"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        if containerValues.contains(.serviceNames) {
            struct KeyVal0{struct item{}}
            let serviceNamesWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.item>.CodingKeys.self, forKey: .serviceNames)
            if let serviceNamesWrappedContainer = serviceNamesWrappedContainer {
                let serviceNamesContainer = try serviceNamesWrappedContainer.decodeIfPresent([String].self, forKey: .member)
                var serviceNamesBuffer:[String]? = nil
                if let serviceNamesContainer = serviceNamesContainer {
                    serviceNamesBuffer = [String]()
                    for stringContainer0 in serviceNamesContainer {
                        serviceNamesBuffer?.append(stringContainer0)
                    }
                }
                serviceNames = serviceNamesBuffer
            } else {
                serviceNames = []
            }
        } else {
            serviceNames = nil
        }
        if containerValues.contains(.serviceDetails) {
            struct KeyVal0{struct item{}}
            let serviceDetailsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.item>.CodingKeys.self, forKey: .serviceDetails)
            if let serviceDetailsWrappedContainer = serviceDetailsWrappedContainer {
                let serviceDetailsContainer = try serviceDetailsWrappedContainer.decodeIfPresent([ServiceDetail].self, forKey: .member)
                var serviceDetailsBuffer:[ServiceDetail]? = nil
                if let serviceDetailsContainer = serviceDetailsContainer {
                    serviceDetailsBuffer = [ServiceDetail]()
                    for structureContainer0 in serviceDetailsContainer {
                        serviceDetailsBuffer?.append(structureContainer0)
                    }
                }
                serviceDetails = serviceDetailsBuffer
            } else {
                serviceDetails = []
            }
        } else {
            serviceDetails = nil
        }
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}