void (^myFirstBlock)(NSString *) = ^(NSString *str){
  NSLog(@"Here is what you typed: %@",str);
};

myFirstBlock(@"Hello");
myFirstBlock(@"World");



void (^logCount)(NSArray *) = ^(NSArray *array){
  NSLog(@"There are %lu objects in this array", [array count]);
};

logCount(@[@"Mr.", @"Higgie"]);
logCount(@[@"Mr.", @"Jony", @"Ive", @"Higgie"]);



NSArray *newHats = @[@"Cowboy", @"Conductor", @"Baseball", 
  @"Beanie", @"Beret", @"Fez"];

void (^enumBlock)(NSString *, NSUInteger, BOOL *)=
  ^(NSString *hat, NSUInteger index, BOOL *stop){
  NSLog(@"Trying on hat %@", hat);
};

[newHats enumerateObjectsUsingBlock:enumBlock];
