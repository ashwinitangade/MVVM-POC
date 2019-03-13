//
//  CountryDetailVCTests.swift
//

import Foundation
import UIKit
@testable import POC
import XCTest

class CountryVCTests: XCTestCase {
    
    var controller: CountryVC!
    var collectionView: UICollectionView!
    var dataSource: CountryDataSource!
    var delegate: UICollectionViewDelegate!
    
    override func setUp() {
        super.setUp()
        let vc = CountryVC()
        controller = vc
        collectionView = controller.countryDescCollectionView
        controller.loadViewIfNeeded()

        // Check the Table data source is CountryDataSource
        guard let ds = collectionView.dataSource as? CountryDataSource else {
            return XCTFail("Controller's collectionview view should have a country data source")
        }
        guard let layout = collectionView.collectionViewLayout as? UICustomCollectionViewLayout else {
            return XCTFail("Controller's collectionview should have a UICustomCollectionViewLayout")
        }
        
        dataSource = ds
        delegate = collectionView.delegate
    }
    //Check Table Has cells
    func testTableViewHasCells() {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.Indentifier.kCountryCell, for: IndexPath(row: 0, section: 0))
        
        XCTAssertNotNil(cell,
                        "collectionview should be able to dequeue cell with identifier: 'Cell'")
    }
    //Check Table view delegate is view controller
    func testTableViewDelegateIsViewController() {
        XCTAssertTrue(collectionView.delegate === controller,
                      "Controller should be delegate for the collectionview")
    }
}


