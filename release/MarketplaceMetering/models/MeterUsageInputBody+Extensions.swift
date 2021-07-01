// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct MeterUsageInputBody: Equatable {
    public let productCode: String?
    public let timestamp: Date?
    public let usageDimension: String?
    public let usageQuantity: Int?
    public let dryRun: Bool?
    public let usageAllocations: [UsageAllocation]?
}

extension MeterUsageInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case dryRun = "DryRun"
        case productCode = "ProductCode"
        case timestamp = "Timestamp"
        case usageAllocations = "UsageAllocations"
        case usageDimension = "UsageDimension"
        case usageQuantity = "UsageQuantity"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let productCodeDecoded = try containerValues.decodeIfPresent(String.self, forKey: .productCode)
        productCode = productCodeDecoded
        let timestampDecoded = try containerValues.decodeIfPresent(Date.self, forKey: .timestamp)
        timestamp = timestampDecoded
        let usageDimensionDecoded = try containerValues.decodeIfPresent(String.self, forKey: .usageDimension)
        usageDimension = usageDimensionDecoded
        let usageQuantityDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .usageQuantity)
        usageQuantity = usageQuantityDecoded
        let dryRunDecoded = try containerValues.decodeIfPresent(Bool.self, forKey: .dryRun)
        dryRun = dryRunDecoded
        let usageAllocationsContainer = try containerValues.decodeIfPresent([UsageAllocation?].self, forKey: .usageAllocations)
        var usageAllocationsDecoded0:[UsageAllocation]? = nil
        if let usageAllocationsContainer = usageAllocationsContainer {
            usageAllocationsDecoded0 = [UsageAllocation]()
            for structure0 in usageAllocationsContainer {
                if let structure0 = structure0 {
                    usageAllocationsDecoded0?.append(structure0)
                }
            }
        }
        usageAllocations = usageAllocationsDecoded0
    }
}