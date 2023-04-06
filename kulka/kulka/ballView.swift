//
//  ballView.swift
//  kulka
//
//  Created by Kacper Ołdziejewski on 05/04/2023.
//

import SwiftUI

struct ballView: View {
    @State var position = CGPoint(x: 100, y: 100)
    
    @State var direction = CGPoint(x: 1, y: 1)
    
    @State var color : Color = Color.red
    
    @State var duration : Double = 0.1
    
    @State var size : CGSize
    
    @State var ballSize: CGFloat = 50
    
    
    
    var body: some View {
        
        GeometryReader {geo in
            
            Circle()
            
                .fill(color)
            
                .frame(width: ballSize, height: ballSize)
            
                .position(position)
            
                .onAppear {
                    
                    self.animateBall(size: geo.size)
                    
                }
            
        }
        
    }
    
    
    
    private func animateBall(size: CGSize) {
        
        withAnimation(Animation.linear(duration: duration)) {
            
            self.position = self.position.applying(CGAffineTransform(translationX: self.direction.x * 10, y: self.direction.y * 10))
            
        }
        
        if position.x <= ballSize/2 || position.x >= size.width-ballSize/2 {
            
            direction.x *= -1
            
        }
        
        
        
        if position.y <= ballSize/2 || position.y >= size.height {
            
            direction.y *= -1
            
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
            
            self.animateBall(size: size)
            
        }
        
    }
}

struct ballView_Previews: PreviewProvider {
    static var previews: some View {
        ballView(size: CGSize())
    }
}
