#import <Foundation/Foundation.h>
#import "Car.h"
#import "Slant6.h"
#import "AllWeatherRadial.h"

int main (int argc, const char * argv[])
{
    @autoreleasepool
    {
        Car *car = [[Car alloc] init];
        
        for (int i = 0; i < 4; i++)
        {
            AllWeatherRadial *tire;
            
            tire = [[AllWeatherRadial alloc] init];
            
            [car setTire: tire
                 atIndex: i];
        }
        
        Engine *engine = [[Slant6 alloc] init];
        [car setEngine: engine];
        
        [car print];
    }
	return (0);
	
} // main

