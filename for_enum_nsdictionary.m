NSDictionary *funnyWords = @{
  @"Schadenfreude": @"pleasure derived by someone from another person's misfortune.",
  @"Portmanteau": @"consisting of or combining two or more separable aspects or qualities",
  @"Penultimate": @"second to the last"
};

for (NSString *word in funnyWords) {
  NSString *definition = funnyWords[word];
  NSLog(@"%@ is defined as %@", word, definition);
}

NSDictionary *newHats = @{                                                                                                    
  @"Cowboy": @"White",
  @"Conductor": @"Brown",
  @"Baseball": @"Red"
};

for (NSString *hat in newHats){

  NSString *color = newHats[hat];
  NSLog(@"Trying on new %@ %@ hat", color, hat);

  if([mrHiggie tryOnHat:hat withColor:color]) {
    NSLog(@"Mr. Higgie loves it");
  } else {
    NSLog(@"Mr. Higgie hates it");
  }
}
