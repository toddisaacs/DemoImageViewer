//
//  CollectionViewController.swift
//  DemoImageViewer
//
//  Created by Todd Isaacs on 1/28/17.
//  Copyright © 2017 Todd Isaacs. All rights reserved.
//

import UIKit
import TIImageViewer

class CollectionViewController: UICollectionViewController {
  
  @IBAction func buttonTaped(_ sender: UIButton) {
    //ImageViewer.show(fromController: self, image: photos[0] , fullScreen: true)
    //let imageViewer = ImageViewer.show(from: self, images: photos, startIndex: 3, fullScreen: true, spacing: 8)
    
    //imageViewer.view.backgroundColor = UIColor.white
  }
  
  fileprivate let reuseIdentifier = "PhotoCell"
  fileprivate let thumbnailSize:CGFloat = 70.0
  fileprivate let sectionInsets = UIEdgeInsets(top: 10, left: 5.0, bottom: 10.0, right: 5.0)
  fileprivate let photos = [UIImage(named: "photo1")!, UIImage(named: "photo2")!, UIImage(named: "photo3")!, UIImage(named: "photo4")!, UIImage(named: "photo5")!]
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let cell = sender as? UICollectionViewCell,
      let indexPath = collectionView?.indexPath(for: cell),
      let managePageViewController = segue.destination as? ImageViewer {
      managePageViewController.images =  photos
      managePageViewController.currentIndex = indexPath.row
    }
  }
}

// MARK: UICollectionViewDataSource
extension CollectionViewController {
  override func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }
  
  override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return photos.count
  }
  
  override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! PhotoCell
    let fullSizedImage = photos[indexPath.row]
    cell.imageView.image = fullSizedImage.thumbnailOfSize(thumbnailSize)
    return cell
  }
  
  override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    print("Select Item: \(indexPath.row)")
    
    _ = ImageViewer.show(from: self, images: photos, startIndex: indexPath.row, fullScreen: true, toolBarMessage: "From DemoImageViewer", spacing: 8)
  }
}

// MARK:UICollectionViewDelegateFlowLayout
extension CollectionViewController : UICollectionViewDelegateFlowLayout {
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: thumbnailSize, height: thumbnailSize)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    return sectionInsets
  }
}


