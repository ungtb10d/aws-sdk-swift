// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

struct ListRecipesOutputResponseBody: Equatable {
    public let recipes: [Recipe]?
    public let nextToken: String?
}

extension ListRecipesOutputResponseBody: Decodable {
    enum CodingKeys: String, CodingKey {
        case nextToken = "NextToken"
        case recipes = "Recipes"
    }

    public init (from decoder: Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let recipesContainer = try containerValues.decodeIfPresent([Recipe?].self, forKey: .recipes)
        var recipesDecoded0:[Recipe]? = nil
        if let recipesContainer = recipesContainer {
            recipesDecoded0 = [Recipe]()
            for structure0 in recipesContainer {
                if let structure0 = structure0 {
                    recipesDecoded0?.append(structure0)
                }
            }
        }
        recipes = recipesDecoded0
        let nextTokenDecoded = try containerValues.decodeIfPresent(String.self, forKey: .nextToken)
        nextToken = nextTokenDecoded
    }
}