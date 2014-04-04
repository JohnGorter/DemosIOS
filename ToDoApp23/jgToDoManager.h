//
//  jgToDoManager.h
//  ToDoApp23
//
//  Created by John Gorter on 04/04/14.
//  Copyright (c) 2014 John Gorter. All rights reserved.
//

#import <Foundation/Foundation.h>

@class jgToDo;

@interface jgToDoManager : NSObject

// public methods
-(NSArray*)GetToDos;
-(jgToDo*)GetToDoById:(int)ToDoId;

-(void)InsertToDo:(jgToDo*)todo;
-(void)MarkToDoDone:(jgToDo*)todo;


@end
