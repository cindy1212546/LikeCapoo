//
//  CardController.swift
//  capoo
//
//  Created by User07 on 2018/5/9.
//  Copyright © 2018年 Peter. All rights reserved.
//

import UIKit
import GameplayKit

class CardController: UIViewController {
    
    @IBOutlet weak var Card1: CardView!
    @IBOutlet weak var Card2: CardView!
    @IBOutlet weak var win1: UILabel!
    @IBOutlet weak var win2: UILabel!
    
    let suit = ["♣️" , "♦️", "♥️" ,"♠️"]
    let face = ["2","3","4","5","6","7","8","9","10","J","Q","K","A"]
    
    @IBAction func play(_ sender: Any) {
        let  randomDistribution1  =  GKRandomDistribution(lowestValue:  0,  highestValue:  face.count  -  1)
        let  randomDistribution2  =  GKRandomDistribution(lowestValue:  0,  highestValue:  suit.count  -  1)
        let f1 = randomDistribution1.nextInt()
        var f2 = randomDistribution1.nextInt()
        let s1 = randomDistribution2.nextInt()
        var s2 = randomDistribution2.nextInt()
        while(f1 == f2 && s1 == s2){
            f2 = randomDistribution1.nextInt()
            s2 = randomDistribution2.nextInt()
        }
        getcard(Card1,f1,s1)
        getcard(Card2,f2,s2)
        if(f1 > f2){
            win1.isHidden = false
            win2.isHidden = true
        }
        else if(f1 < f2){
            win1.isHidden = true
            win2.isHidden = false
        }
        else{
            if(s1 > s2){
                win1.isHidden = false
                win2.isHidden = true
            }
            else{
                win1.isHidden = true
                win2.isHidden = false
            }
        }
    }
    
    func getcard(_ Card: CardView, _ f: Int, _ s: Int) {
        Card.face1.isHidden = false
        Card.face2.isHidden = false
        Card.suit1.isHidden = false
        Card.suit2.isHidden = false
        Card.face1.text = face[f]
        Card.face2.text = face[f]
        Card.suit1.text = suit[s]
        Card.suit2.text = suit[s]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
