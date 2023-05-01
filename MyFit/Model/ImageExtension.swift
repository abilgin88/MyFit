//
//  ImageExtension.swift
//  MyFit88
//
//  Created by Abdullah Bilgin on 4/29/23.
//

import SwiftUI

extension Image {
  /// Resize an image with fill aspect ratio and specified frame dimensions.
  ///   - parameters:
  ///     - width: Frame width.
  ///     - height: Frame height.
  func resizedToFill(width: CGFloat, height: CGFloat)
  -> some View {
    self
      .resizable()
      .aspectRatio(contentMode: .fill)
      .frame(width: width, height: height)
  }
}
