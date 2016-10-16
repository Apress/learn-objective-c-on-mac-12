#import "Car.h"

@implementation Car {
    NSMutableArray *tires;
}

@synthesize name = appellation;
@synthesize engine;

- (id) init
{
    if (self = [super init]) {

		self.name = @"Car";
        tires = [[NSMutableArray alloc] init];

        for (int i = 0; i < 4; i++)
        {
            [tires addObject: [NSNull null]];
        }
    }

    return (self);

} // init


- (id) copyWithZone: (NSZone *) zone
{
	Car *carCopy;
	carCopy = [[[self class] 
				allocWithZone: zone]
			   init];
	
	carCopy.name = self.name;
	
	Engine *engineCopy;
	engineCopy = [[engine copy] autorelease];
	carCopy.engine = engineCopy;
	
	for (int i = 0; i < 4; i++)
    {
		Tire *tireCopy;
		
		tireCopy = [[self tireAtIndex: i] copy];
		[tireCopy autorelease];
		
		[carCopy setTire: tireCopy
				 atIndex: i];
	}
	
	return (carCopy);
	
} // copyWithZone


- (void) dealloc
{
	self.name = nil;
    [tires release];
    [engine release];

    [super dealloc];

} // dealloc


- (void) setTire: (Tire *) tire
         atIndex: (int) index
{
    [tires replaceObjectAtIndex: index
           withObject: tire];

} // setTire:atIndex:


- (Tire *) tireAtIndex: (int) index
{
    Tire *tire;
    tire = [tires objectAtIndex: index];

    return (tire);

} // tireAtIndex:


- (void) print
{
	NSLog (@"%@ has:", self.name);
    for (int i = 0; i < 4; i++) {
        NSLog (@"%@", [self tireAtIndex: i]);
    }

    NSLog (@"%@", engine);

} // print

@end // Car

