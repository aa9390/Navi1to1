//
//  OrderViewController.swift
//  Test1
//
//  Created by SWUCOMPUTER on 2018. 4. 3..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController {

    @IBOutlet var infoLabel: UILabel!
    
    // info는 상위 뷰에서 넘어오는 변수.
    // 값이 채워질수도 있고 없을수도 있음. 따라서 옵셔널변수로 설정해야 함.
    // 옵셔널변수이면 초기화를 안해줘도 됨.
    var info: String?
    
    // 해당하는 이 뷰가 뜨기 전에 엑스코드는 자동으로 이 함수를 실행함.
    // 뷰가 뜨기 전에 하고시픈 작업이 있다면 이 함수 안에 넣어주기.
    // 상위 뷰에서 하위 뷰로 값을 전달할것임.
    // 스트링 변수에 있는 내용을 레이블에 쓰면 됨.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        infoLabel.text = info
    
        // 모든 경우를 확인할 옵셔널 바인딩.
        /*
        if let contentString = info {
            infoLabel.text = contentString
        }
         */

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
