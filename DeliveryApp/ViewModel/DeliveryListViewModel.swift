//
//  DeliveryListViewModel.swift
//  DeliveryApp
//
//  Created by Arun Jose on 09/10/18.
//  Copyright © 2018 Arun Jose. All rights reserved.
//

import Foundation

protocol DeliveryListViewModel {
    var isOffline:Dynamic<Bool> { get }
    var noOfDeliveries:Dynamic<Int> { get }
    var isDeliveryDataLoading:Dynamic<Bool> { get }
    var error:Dynamic<String> { get }
    
    func getCellDeliverDetail(atIndex indexpath:IndexPath) -> DeliveryDetailCellSource
    func fetchDeliveryList()
    func fetchMoreDeliveries()
}

struct DeliveryDetailCellSource {
    var imageUrl:String
    var description:String
}
