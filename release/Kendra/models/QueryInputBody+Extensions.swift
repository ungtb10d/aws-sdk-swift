// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct QueryInputBody: Equatable {
    public let indexId: String?
    public let queryText: String?
    public let attributeFilter: AttributeFilter?
    public let facets: [Facet]?
    public let requestedDocumentAttributes: [String]?
    public let queryResultTypeFilter: QueryResultType?
    public let documentRelevanceOverrideConfigurations: [DocumentRelevanceConfiguration]?
    public let pageNumber: Int?
    public let pageSize: Int?
    public let sortingConfiguration: SortingConfiguration?
    public let userContext: UserContext?
    public let visitorId: String?
}

extension QueryInputBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case attributeFilter = "AttributeFilter"
        case documentRelevanceOverrideConfigurations = "DocumentRelevanceOverrideConfigurations"
        case facets = "Facets"
        case indexId = "IndexId"
        case pageNumber = "PageNumber"
        case pageSize = "PageSize"
        case queryResultTypeFilter = "QueryResultTypeFilter"
        case queryText = "QueryText"
        case requestedDocumentAttributes = "RequestedDocumentAttributes"
        case sortingConfiguration = "SortingConfiguration"
        case userContext = "UserContext"
        case visitorId = "VisitorId"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let indexIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .indexId)
        indexId = indexIdDecoded
        let queryTextDecoded = try containerValues.decodeIfPresent(String.self, forKey: .queryText)
        queryText = queryTextDecoded
        let attributeFilterDecoded = try containerValues.decodeIfPresent(AttributeFilter.self, forKey: .attributeFilter)
        attributeFilter = attributeFilterDecoded
        let facetsContainer = try containerValues.decodeIfPresent([Facet?].self, forKey: .facets)
        var facetsDecoded0:[Facet]? = nil
        if let facetsContainer = facetsContainer {
            facetsDecoded0 = [Facet]()
            for structure0 in facetsContainer {
                if let structure0 = structure0 {
                    facetsDecoded0?.append(structure0)
                }
            }
        }
        facets = facetsDecoded0
        let requestedDocumentAttributesContainer = try containerValues.decodeIfPresent([String?].self, forKey: .requestedDocumentAttributes)
        var requestedDocumentAttributesDecoded0:[String]? = nil
        if let requestedDocumentAttributesContainer = requestedDocumentAttributesContainer {
            requestedDocumentAttributesDecoded0 = [String]()
            for string0 in requestedDocumentAttributesContainer {
                if let string0 = string0 {
                    requestedDocumentAttributesDecoded0?.append(string0)
                }
            }
        }
        requestedDocumentAttributes = requestedDocumentAttributesDecoded0
        let queryResultTypeFilterDecoded = try containerValues.decodeIfPresent(QueryResultType.self, forKey: .queryResultTypeFilter)
        queryResultTypeFilter = queryResultTypeFilterDecoded
        let documentRelevanceOverrideConfigurationsContainer = try containerValues.decodeIfPresent([DocumentRelevanceConfiguration?].self, forKey: .documentRelevanceOverrideConfigurations)
        var documentRelevanceOverrideConfigurationsDecoded0:[DocumentRelevanceConfiguration]? = nil
        if let documentRelevanceOverrideConfigurationsContainer = documentRelevanceOverrideConfigurationsContainer {
            documentRelevanceOverrideConfigurationsDecoded0 = [DocumentRelevanceConfiguration]()
            for structure0 in documentRelevanceOverrideConfigurationsContainer {
                if let structure0 = structure0 {
                    documentRelevanceOverrideConfigurationsDecoded0?.append(structure0)
                }
            }
        }
        documentRelevanceOverrideConfigurations = documentRelevanceOverrideConfigurationsDecoded0
        let pageNumberDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .pageNumber)
        pageNumber = pageNumberDecoded
        let pageSizeDecoded = try containerValues.decodeIfPresent(Int.self, forKey: .pageSize)
        pageSize = pageSizeDecoded
        let sortingConfigurationDecoded = try containerValues.decodeIfPresent(SortingConfiguration.self, forKey: .sortingConfiguration)
        sortingConfiguration = sortingConfigurationDecoded
        let userContextDecoded = try containerValues.decodeIfPresent(UserContext.self, forKey: .userContext)
        userContext = userContextDecoded
        let visitorIdDecoded = try containerValues.decodeIfPresent(String.self, forKey: .visitorId)
        visitorId = visitorIdDecoded
    }
}