//
//  ViewController.swift
//  Test1
//
//  Created by SWUCOMPUTER on 2018. 4. 3..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // .swift 파일은 뷰컨트롤러와 지정을 해야함.
    // 스토리보드 뷰의 클래스를 뷰컨트롤러로 설정.
    // 상위 뷰에서 하위 뷰로 다양한 자료를 전달할 수 있음.
    @IBOutlet var pizzaChicken: UISegmentedControl!
    
    // 버튼이 눌려지면 호출됨.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 오더뷰로 가는 작업이 실행되면
        if segue.identifier == "toOrderView" {
            let destVC = segue.destination as! OrderViewController
            
            // 확실히 어떤 값이 있다고 확정함.
            // 물음표 찍어도, 안찍어도(옵셔널이 아니어도) 나중에 문제 발생.
            let ordered: String! = pizzaChicken.titleForSegment (at:pizzaChicken.selectedSegmentIndex)
            
            destVC.title = ordered
            
            var outString: String = "감사합니다!!\n 주문내역: <"
            outString += ordered
            outString += ">, 맞나요?"
            destVC.info = outString
        }
        
    }
}


