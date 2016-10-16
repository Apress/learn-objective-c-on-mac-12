#import "Engine.h"

@implementation Engine

- (id) copyWithZone: (NSZone *) zone
{
	Engine *engineCopy;
	engineCopy = [[[self class]
				   allocWithZone: zone]
				  init];
	
	return (engineCopy);
	
} // copyWithZone


- (NSString *) description
{
    return (@"I am an engine.  Vrooom!");
} // description

@end // Engine

