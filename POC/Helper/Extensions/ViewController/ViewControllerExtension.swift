//
//  ViewControllerExtension.swift
// 
import UIKit
import Foundation

extension UIViewController
{
    func addTitleNavigationItem(title:String)
    {
        self.navigationController?.navigationBar.backItem?.title = " "
        self.title = title
      
       
       
    }
    func popupAlert(title: String?, message: String?, actionTitles:[String?], actions:[((UIAlertAction) -> Void)?]) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        for (index, title) in actionTitles.enumerated() {
            let action = UIAlertAction(title: title, style: .default, handler: actions[index])
            alert.addAction(action)
        }
        self.present(alert, animated: true, completion: nil)
    }
   
   
    
    

}

