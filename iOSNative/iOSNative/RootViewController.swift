//
//  ViewController.swift
//  iOSNative
//
//  Created by kimoji on 2023/9/21.
//

import UIKit
import Flutter
import FlutterPluginRegistrant

import Cordova

class RootViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onFlutterRootTap(sender: UIButton) -> Void {
        print("flutter tap");
        let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine;
        let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil);
        self.navigationController?.pushViewController(flutterViewController, animated: true);
        //        present(flutterViewController, animated: true, completion: nil);
    }
    
    @IBAction func onFlutterSpecialTap(sender: UIButton) -> Void {
        print("flutter tap");
        let flutterEngine = (UIApplication.shared.delegate as! AppDelegate).flutterEngine;
        let flutterViewController = FlutterViewController(
              project: nil, initialRoute: "/second", nibName: nil, bundle: nil)
        self.navigationController?.pushViewController(flutterViewController, animated: true);
        //        present(flutterViewController, animated: true, completion: nil);
    }
    
    @IBAction func onCordovaTap(sender: UIButton) -> Void {
        print("cordova tap");
//        CDVViewController();
        let cdvVC = CDVViewController();
        cdvVC.wwwFolderName = "www";
        self.navigationController?.pushViewController(cdvVC, animated: true);
    }
}

