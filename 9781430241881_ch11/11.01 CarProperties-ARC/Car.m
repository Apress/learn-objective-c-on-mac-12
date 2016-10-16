#import "Car.h"
#import "Engine.h"

@implementation Car
{
    NSMutableArray *tires;
}

@synthesize name = appellation;
@synthesize engine;

- (id) init
{
    if (self = [super init]) {

		self.name = @"Car";
        tires = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 4; i++) {
            [tires addObject: [NSNull null]];
        }
    }

    return (self);

} // init

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

