//
//  ViewController.swift
//  UIScrollView #2
//
//  Created by MacBook on 06.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var myScrollView = UIScrollView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let oneImage = UIImage(named: "bmw2")
        let twoImage = UIImage(named: "bmw3")
        let threeImage = UIImage(named: "bmw4")
        let fourImage = UIImage(named: "bmw1")
        let fiveImage = UIImage(named: "bmw0")
        
        let scrollViewRect = self.view.bounds
        
        //Создаем UIScrollView
        myScrollView = UIScrollView(frame: scrollViewRect)
        myScrollView.isPagingEnabled = true
        myScrollView.contentSize = CGSize(width: scrollViewRect.size.width * 5, height: scrollViewRect.size.height)
        self.view.addSubview(myScrollView)
        
        //Создаем oneImage
        var imageViewRect = self.view.bounds
        let oneImageView = self.newImageViewWithImage(paramImage: oneImage!, paramFrame: imageViewRect)
        myScrollView.addSubview(oneImageView)
        
        //Создаем twoImage
        imageViewRect.origin.x += imageViewRect.size.width
        let twoImageView = self.newImageViewWithImage(paramImage: twoImage!, paramFrame: imageViewRect)
        myScrollView.addSubview(twoImageView)
        
        //Создаем threeImage
        imageViewRect.origin.x += imageViewRect.size.width
        let threeImageView = self.newImageViewWithImage(paramImage: threeImage!, paramFrame: imageViewRect)
        myScrollView.addSubview(threeImageView)
        
        //Создаем fourImage
        imageViewRect.origin.x += imageViewRect.size.width
        let fourImageView = self.newImageViewWithImage(paramImage: fourImage!, paramFrame: imageViewRect)
        myScrollView.addSubview(fourImageView)
        
        //Создаем fiveImage
        imageViewRect.origin.x += imageViewRect.size.width
        let fiveImageView = self.newImageViewWithImage(paramImage: fiveImage!, paramFrame: imageViewRect)
        myScrollView.addSubview(fiveImageView)
        
    }
    //создали универсальную функцию newImageViewWithImage
    func newImageViewWithImage(paramImage: UIImage, paramFrame: CGRect) -> UIImageView {
        let result = UIImageView(frame: paramFrame)
        result.contentMode = .scaleAspectFit
        result.image = paramImage
        return result
    }
}
