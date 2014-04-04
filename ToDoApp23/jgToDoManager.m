//
//  jgToDoManager.m
//  ToDoApp23
//
//  Created by John Gorter on 04/04/14.
//  Copyright (c) 2014 John Gorter. All rights reserved.
//

#import "jgToDoManager.h"
#import "jgToDo.h"


// class extension
@interface jgToDoManager()

@property (nonatomic, strong) NSMutableArray* todos;

@end

@implementation jgToDoManager

-(id)init{
    self = [super init];
    if (self)
    {
        _todos = [@[
                   [[jgToDo alloc] initWithTitle:@"hond uitlaten" AndDescription:@"minimaal 5 km lopen met die beesten"],
                   [[jgToDo alloc] initWithTitle:@"auto wassen" AndDescription:@"minimaal 5 km lopen met die beesten"],
                   [[jgToDo alloc] initWithTitle:@"appje bouwen" AndDescription:@"minimaal 5 km lopen met die beesten"],
                   [[jgToDo alloc] initWithTitle:@"tv kijken" AndDescription:@"minimaal 5 km lopen met die beesten"],
                   ] mutableCopy];
    }
    return self;
}

-(jgToDo *)GetToDoById:(int)ToDoId{
   for (jgToDo* to in _todos)
       if (to.ToDoId == ToDoId)
           return to;
    return Nil;
}


-(NSArray *)GetToDos{
    return _todos;
}

-(void)InsertToDo:(jgToDo *)todo{
    [_todos addObject:todo];
}

-(void)MarkToDoDone:(jgToDo *)todo{
    jgToDo* t = [self GetToDoById:[todo ToDoId]];
    [t setDone:TRUE];
}

@end
