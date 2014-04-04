//
//  jgToDo.m
//  ToDoApp23
//
//  Created by John Gorter on 04/04/14.
//  Copyright (c) 2014 John Gorter. All rights reserved.
//

#import "jgToDo.h"

@implementation jgToDo

static int counter = 0;

-(id)initWithTitle:(NSString *)title AndDescription:(NSString *)description{
    id this = [super init];
    if (this) {
        _Title = title;
        _Description = description;
        _Done = false;
        _ToDoId = counter++;
    }
    return this;
}

@end
