- (void)beginRotation
{
    [self.syncButton setState:NSOnState];
    [self.syncButton setWantsLayer:YES];
    
    CALayer *theLayer = [self.syncButton layer];
    CGRect f = self.syncButton.frame;
    float w = f.size.width;
    float h = f.size.height;
    
    [theLayer setPosition:CGPointMake(w/2.0, h/2.0)];
    [theLayer setAnchorPoint:CGPointMake(0.5, 0.5)];
    CAKeyframeAnimation* rotationAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform.rotation"];
    rotationAnimation.values = [NSArray arrayWithObjects:
                                [NSNumber numberWithFloat:0.0 * M_PI], 
                                [NSNumber numberWithFloat:-0.25 * M_PI], 
                                [NSNumber numberWithFloat:-0.50 * M_PI], 
                                [NSNumber numberWithFloat:-0.75 * M_PI], 
                                [NSNumber numberWithFloat:-1.0 * M_PI],
                                [NSNumber numberWithFloat:-1.25 * M_PI], 
                                [NSNumber numberWithFloat:-1.5 * M_PI], 
                                [NSNumber numberWithFloat:-1.75 * M_PI], 
                                [NSNumber numberWithFloat:-2.0 * M_PI], 
                                nil]; 
    rotationAnimation.calculationMode = kCAAnimationLinear;
    rotationAnimation.rotationMode = kCAAnimationRotateAutoReverse;
    
    rotationAnimation.removedOnCompletion = NO;
    rotationAnimation.fillMode = kCAFillModeBoth;
    
    rotationAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    rotationAnimation.duration = 1.0;
    rotationAnimation.repeatCount = HUGE_VALF;
    
    [theLayer addAnimation:rotationAnimation forKey:@"rotateAnimation"];
}

- (void)endRotation
{
    CALayer *theLayer = [self.syncButton layer];
    [theLayer removeAnimationForKey:@"rotateAnimation"];
    [self.syncButton setState:NSOffState];
}