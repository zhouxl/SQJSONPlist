//
//  SQJSONPlist.swift
//  SQSJONToPlist
//
//  Created by 小六 on 1月10日.
//  Copyright © 2016年 小六. All rights reserved.
//

import UIKit

class SQJSONPlist: NSObject {
    
    static func loadGEOJSONFromFileName(fileName : String) -> AnyObject{
        return self.loadFile(fileName, type: "geojson")
        
    }
    
    static func loadPlistFromFileName(fileName : String) -> AnyObject  {
        return self.loadFile(fileName, type: "plist")
    }
    
    private static func loadFile(fileName : String, type : String) -> AnyObject {
        let path = NSBundle.mainBundle().pathForResource(fileName, ofType: type)!
        let data = NSData(contentsOfFile: path);
        
        do{
            let json = try NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments)
            return json
        }catch {
            print("erro")
        }
        return "";
    }
}


