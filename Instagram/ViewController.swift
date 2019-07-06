//
//  ViewController.swift
//  Instagram
//
//  Created by Ahmed Ibrahim on 7/5/19.
//  Copyright © 2019 Ahmed Ibrahim. All rights reserved.
//

import UIKit
import InstagramKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var labelcell: UILabel!
    
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myTableView: UITableView!
    
    let likes = [ "12 likes", "110 likes", "50 likes", "4165 likes", "656 likes", "3 likes", "263 likes" , "362 likes" , "12310 likes" , "151 likes" ]
    let name = [ "Ahmed", "Azooz", "Omar", "Dana", "Farah", "Mekawy", "Muaz" , "Karim" , "Lana" , "Tia"]
        let caption = [ "cute", "happy", "sad", "wedding", "funeral", "graduated", "sleeping" , "eating" , "gym" , "football"]
    let comments = [ "view all 12 comments" ,  "view all 333 comments", "view all 5000 comments" ,  "view all 70 comments" ,  "view all 64 comments" ,  "view all 77 comments" ,  "view all 90 comments" , "view all 1500 comments",  "view all 3000 comments",  "view all 231 comments"]
    
    let sowar = [UIImage(named: "i1") , UIImage(named: "i2") , UIImage(named: "i3") , UIImage(named: "i4") , UIImage(named: "i5") , UIImage(named: "i6") , UIImage(named: "i7"), UIImage(named: "i8"), UIImage(named: "i9"), UIImage(named: "i10")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.delegate = self
        myTableView.dataSource = self
       
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(indexPath.row == 0){
            let cell = myTableView.dequeueReusableCell(withIdentifier: "StoriesCell", for: indexPath) as! StoriesCell
            
            return cell
        }
        
            let cell = myTableView.dequeueReusableCell(withIdentifier: "InformationCell") as! InformationCell
        
        cell.SecondImageLabel.image = sowar[indexPath.row]
        cell.FirstLabel.text = name[indexPath.row]
        cell.SecondLabel.text = likes[indexPath.row]
        cell.ThirdLabel.text = name[indexPath.row]
        cell.FourthLabel.text = comments[indexPath.row]
        cell.FifthLabel.text = caption[indexPath.row]
            
            return cell
        
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }


}

