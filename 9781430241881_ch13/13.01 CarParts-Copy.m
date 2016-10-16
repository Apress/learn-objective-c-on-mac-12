#import <Foundation/Foundation.h>
#import "Car.h"
#import "Slant6.h"
#import "AllWeatherRadial.h"

int main (int argc, const char * argv[])
{
    @autoreleasepool
    {
        Car *car = [[Car alloc] init];
        car.name = @"Herbie";
        
        for (int i = 0; i < 4; i++)
        {
            AllWeatherRadial *tire;
            tire = [[AllWeatherRadial alloc] init];
		
            [car setTire: tire
                 atIndex: i];
            [tire release];
        }
	
        Slant6 *engine = [[Slant6 alloc] init];
        car.engine = engine;
        [engine release];
	
        [car print];
	
        Car *carCopy = [car copy];
        [carCopy print];
	
        [car release];
        [carCopy release];
	}
	return (0);
} // main

