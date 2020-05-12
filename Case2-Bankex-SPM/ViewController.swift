//
//  ViewController.swift
//  Case2-Bankex-SPM
//
//  Created by Belén on 20/04/2020.
//  Copyright © 2020 IWEB. All rights reserved.
//

import UIKit
import web3swift
import BigInt

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var moreButton: UIButton!
    @IBOutlet weak var lessButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    var account: Address!
    var contractAddress: Address!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Web3.default = try! .local(port: 7545)
        let web3 = Web3.default
        
        let mnemonicsString = "assist scrap fortune scissors addict duck clean rice guard people social wrestle"
        let mnemonics = try! Mnemonics(mnemonicsString)
        let keystore = try! BIP32Keystore(mnemonics: mnemonics)
        web3.keystoreManager.append(keystore)
        for _ in 0..<9 {
            try! keystore.createNewChildAccount()
        }

        self.account = web3.keystoreManager.addresses[0]
        
        let abiPath = Bundle.main.path(forResource: "contractAbi", ofType: "json")
        let abiString = try! String(contentsOfFile: abiPath!, encoding: .utf8)
        print("Abi importado")
        
        self.contractAddress = Address("0xc481b3c43AF7e98c892995a48a1ebbAdd5ABaCb2")
        let contract = try! web3.contract(abiString, at: self.contractAddress!)
        print("Contrato configurado")
        print(contract)
                
        do {
            
            
            //let result = try contractAddress.call("valor", []).wait().uint8()
            //print(result)
            
            /*
            var options = Web3Options.default
            options.from = keystore.addresses[0]
            options.gasPrice =  BigUInt(20000000000)
            options.value = BigUInt(0)
            let estimatedGas = try contract.method(options: options).estimateGas(options: nil)
            options.gasLimit = estimatedGas
            print("opciones puestas")
            
            let intermediateTx = try web3.contract(abiString, at: contractAddress).method("incr", parameters: [], options: options)
            print(intermediateTx.method)
            print("tx creada")
            let result = try intermediateTx.send()
            print(result)
            print("tx enviada")
            */
        } catch {
            print("SOS qué está pachando. \(error)")
        }
        
        
        
        
        /* FUNCIONA

         var options = Web3Options.default
         options.from = keystore.addresses[0]
         
         let transaction = try! web3.eth.sendETH(to: keystore.addresses[1], amount: BigUInt ("10", units: .eth)!).send(options: options)
         print(transaction.hash)
         
         */
    }

    @IBAction func incr(_ sender: Any) {
        var options = Web3Options.default
        options.from = self.account
        do {
            let readedValue = try contractAddress.call("getValor").wait().uint8()
            print(readedValue)

        } catch {
            print(error)
        }
    }
    
    @IBAction func decr(_ sender: Any) {
    }
    
    @IBAction func reset(_ sender: Any) {
    }
}

