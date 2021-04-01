//
//  Books.swift
//  Tapadoo-test
//
//  Created by Shashank Chandran on 01/04/2021.
//

import Foundation

struct BookDetails: Decodable {
    let Id: Int
    let Isbn: String
    let Price: Int
    let Description: String?
    let CurrencyCode: String
    let Author: String
    
    enum CodingKeys: String, CodingKey {
        case Price = "price"
        case CurrencyCode = "currencyCode"
        case Description = "description"
        case Author = "author"
        case Isbn = "isbn"
        case Id = "id"
    }
}

