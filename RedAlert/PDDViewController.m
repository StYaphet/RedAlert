//
//  PDDViewController.m
//  RedAlert
//
//  Created by 郝一鹏 on 2018/1/7.
//  Copyright © 2018年 郝一鹏. All rights reserved.
//

#import "PDDViewController.h"

@interface PDDViewController ()

@property (nonatomic, assign) BOOL isRed;

@end

@implementation PDDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	GLKView *view = (GLKView *)self.view;
	view.context = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES2];
	self.isRed = YES;
}

- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect {
	glClear(GL_COLOR_BUFFER_BIT);
}

- (void)update {
    
	if (self.isRed) {
		glClearColor(208.0/255.0, 2.0/255.0, 27.0/255.0, 1.0);
	} else {
		glClearColor(0.0/255.0, 0.0/255.0, 0.0/255.0, 1.0);
	}
    self.isRed = !self.isRed;
}

@end
