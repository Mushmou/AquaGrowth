//
//  ScanViewModel.swift
//  AquaGrowthMobile
//
//  Created by Noah Jacinto on 11/9/23.
//

import Foundation
import Combine

class ScanViewModel: ObservableObject {
    @Published private(set) var state: ScanState = .idle

    private let useCase: CentralUseCase

    init(useCase: CentralUseCase) {
        self.useCase = useCase
        setupBindings()
    }

    func scan() {
        useCase.scan(for: [UUIDs.ledService])
    }

    private func setupBindings() {
        useCase.onPeripheralDiscovery = { [weak self] peripheral in
            guard let self = self else { return }
            self.state = .scan(Array(self.useCase.foundPeripherals))
        }
        // Additional bindings can be added for other use case events
    }
}
