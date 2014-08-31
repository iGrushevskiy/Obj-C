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
