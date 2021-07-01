// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension BudgetPerformanceHistory: Codable, Reflection {
    enum CodingKeys: String, CodingKey {
        case budgetName = "BudgetName"
        case budgetType = "BudgetType"
        case budgetedAndActualAmountsList = "BudgetedAndActualAmountsList"
        case costFilters = "CostFilters"
        case costTypes = "CostTypes"
        case timeUnit = "TimeUnit"
    }

    public func encode(to encoder: Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let budgetName = budgetName {
            try encodeContainer.encode(budgetName, forKey: .budgetName)
        }
        if let budgetType = budgetType {
            try encodeContainer.encode(budgetType.rawValue, forKey: .budgetType)
        }
        if let budgetedAndActualAmountsList = budgetedAndActualAmountsList {
            var budgetedAndActualAmountsListContainer = encodeContainer.nestedUnkeyedContainer(forKey: .budgetedAndActualAmountsList)
            for budgetedandactualamountslist0 in budgetedAndActualAmountsList {
                try budgetedAndActualAmountsListContainer.encode(budgetedandactualamountslist0)
            }
        }
        if let costFilters = costFilters {
            var costFiltersContainer = encodeContainer.nestedContainer(keyedBy: Key.self, forKey: .costFilters)
            for (dictKey0, costfilters0) in costFilters {
                try costFiltersContainer.encode(costfilters0, forKey: Key(stringValue: dictKey0))
            }
        }
        if let costTypes = costTypes {
            try encodeContainer.encode(costTypes, forKey: .costTypes)
        }
        if let timeUnit = timeUnit {
            try encodeContainer.encode(timeUnit.rawValue, forKey: .timeUnit)
        }
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let budgetNameDecoded = try containerValues.decodeIfPresent(String.self, forKey: .budgetName)
        budgetName = budgetNameDecoded
        let budgetTypeDecoded = try containerValues.decodeIfPresent(BudgetType.self, forKey: .budgetType)
        budgetType = budgetTypeDecoded
        let costFiltersContainer = try containerValues.decodeIfPresent([String: [String?]?].self, forKey: .costFilters)
        var costFiltersDecoded0: [String:[String]]? = nil
        if let costFiltersContainer = costFiltersContainer {
            costFiltersDecoded0 = [String:[String]]()
            for (key0, dimensionvalues0) in costFiltersContainer {
                var dimensionvalues0Decoded0: [String]? = nil
                if let dimensionvalues0 = dimensionvalues0 {
                    dimensionvalues0Decoded0 = [String]()
                    for string1 in dimensionvalues0 {
                        if let string1 = string1 {
                            dimensionvalues0Decoded0?.append(string1)
                        }
                    }
                }
                costFiltersDecoded0?[key0] = dimensionvalues0Decoded0
            }
        }
        costFilters = costFiltersDecoded0
        let costTypesDecoded = try containerValues.decodeIfPresent(CostTypes.self, forKey: .costTypes)
        costTypes = costTypesDecoded
        let timeUnitDecoded = try containerValues.decodeIfPresent(TimeUnit.self, forKey: .timeUnit)
        timeUnit = timeUnitDecoded
        let budgetedAndActualAmountsListContainer = try containerValues.decodeIfPresent([BudgetedAndActualAmounts?].self, forKey: .budgetedAndActualAmountsList)
        var budgetedAndActualAmountsListDecoded0:[BudgetedAndActualAmounts]? = nil
        if let budgetedAndActualAmountsListContainer = budgetedAndActualAmountsListContainer {
            budgetedAndActualAmountsListDecoded0 = [BudgetedAndActualAmounts]()
            for structure0 in budgetedAndActualAmountsListContainer {
                if let structure0 = structure0 {
                    budgetedAndActualAmountsListDecoded0?.append(structure0)
                }
            }
        }
        budgetedAndActualAmountsList = budgetedAndActualAmountsListDecoded0
    }
}