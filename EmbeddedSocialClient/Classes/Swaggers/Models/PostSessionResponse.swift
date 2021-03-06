//
// PostSessionResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Response from post (create) session */
open class PostSessionResponse: JSONEncodable {

    /** Gets or sets user handle */
    public var userHandle: String?
    /** Gets or sets session token generated by our server.              The client saves the session token and sends it with every request */
    public var sessionToken: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["userHandle"] = self.userHandle
        nillableDictionary["sessionToken"] = self.sessionToken

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
