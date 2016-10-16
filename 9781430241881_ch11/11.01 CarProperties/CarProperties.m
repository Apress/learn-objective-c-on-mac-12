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
        
        for (int i = 0; i < 4; i++) {
            AllWeatherRadial *tire;
            
            tire = [[AllWeatherRadial alloc] init];
            [tire setRainHandling: 20 + i];
            [tire setSnowHandling: 28 + i];
            
            [car setTire: tire atIndex: i];
            
            [tire release];
        }
        
        Slant6 *engine = [[Slant6 alloc] init];
        car.engine = engine;
        
        [engine release];
        
        [car print];
        [car release];
    }
	
	return (0);
	
} // main

