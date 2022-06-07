////////////////////////////////////////////////////////////////////////////
//
// Copyright 2021 Realm Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
////////////////////////////////////////////////////////////////////////////

#if os(macOS)
import RealmSwift
import XCTest

#if canImport(RealmTestSupport)
import RealmSwiftSyncTestSupport
import RealmSyncTestSupport
import RealmTestSupport
import SwiftUI
#endif

class EventObject: AsymmetricObject {
    @Persisted(primaryKey: true) var _id: ObjectId = ObjectId.generate()
    @Persisted var label: String
    @Persisted var category: String
}

class SwiftAsymmetricSyncTests: SwiftSyncTestCase {
    func testAsymmetricObjectSchema() throws {
        let configuration = Realm.Configuration(objectTypes: [EventObject.self])
        let realm = try Realm(configuration: configuration)
        let schema = realm.schema
    }
}

#endif // os(macOS)
