// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsOutputResponseBody: Equatable {
    public let localGatewayRouteTableVirtualInterfaceGroupAssociations: [LocalGatewayRouteTableVirtualInterfaceGroupAssociation]?
    public let nextToken: String?
}

extension DescribeLocalGatewayRouteTableVirtualInterfaceGroupAssociationsOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case localGatewayRouteTableVirtualInterfaceGroupAssociations = "localGatewayRouteTableVirtualInterfaceGroupAssociationSet"
        case nextToken = "nextToken"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        if containerValues.contains(.localGatewayRouteTableVirtualInterfaceGroupAssociations) {
            struct KeyVal0{struct item{}}
            let localGatewayRouteTableVirtualInterfaceGroupAssociationsWrappedContainer = containerValues.nestedContainerNonThrowable(keyedBy: CollectionMemberCodingKey<KeyVal0.item>.CodingKeys.self, forKey: .localGatewayRouteTableVirtualInterfaceGroupAssociations)
            if let localGatewayRouteTableVirtualInterfaceGroupAssociationsWrappedContainer = localGatewayRouteTableVirtualInterfaceGroupAssociationsWrappedContainer {
                let localGatewayRouteTableVirtualInterfaceGroupAssociationsContainer = try localGatewayRouteTableVirtualInterfaceGroupAssociationsWrappedContainer.decodeIfPresent([LocalGatewayRouteTableVirtualInterfaceGroupAssociation].self, forKey: .member)
                var localGatewayRouteTableVirtualInterfaceGroupAssociationsBuffer:[LocalGatewayRouteTableVirtualInterfaceGroupAssociation]? = nil
                if let localGatewayRouteTableVirtualInterfaceGroupAssociationsContainer = localGatewayRouteTableVirtualInterfaceGroupAssociationsContainer {
                    localGatewayRouteTableVirtualInterfaceGroupAssociationsBuffer = [LocalGatewayRouteTableVirtualInterfaceGroupAssociation]()
                    for structureContainer0 in localGatewayRouteTableVirtualInterfaceGroupAssociationsContainer {
                        localGatewayRouteTableVirtualInterfaceGroupAssociationsBuffer?.append(structureContainer0)
                    }
                }
                localGatewayRouteTableVirtualInterfaceGroupAssociations = localGatewayRouteTableVirtualInterfaceGroupAssociationsBuffer
            } else {
                localGatewayRouteTableVirtualInterfaceGroupAssociations = []
            }
        } else {
            localGatewayRouteTableVirtualInterfaceGroupAssociations = nil
        }
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}