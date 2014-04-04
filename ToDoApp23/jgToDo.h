//
//  jgToDo.h
//  ToDoApp23
//
//  Created by John Gorter on 04/04/14.
//  Copyright (c) 2014 John Gorter. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface jgToDo : NSObject

@property (nonatomic) int ToDoId;

@property (nonatomic, strong) NSString* Title;
@property (nonatomic, strong) NSString* Description;

@property (nonatomic) bool Done;

-(id)initWithTitle:(NSString*)title AndDescription:(NSString*)description;

@end
