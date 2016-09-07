//
//  main.m
//  BInarySearch
//
//  Created by Philip Ha on 2016-09-06.
//  Copyright © 2016 Philip Ha. All rights reserved.
//

#import <Foundation/Foundation.h>


//Binary Search

int binarySearch(NSArray *array, int target, int min, int max) {
    
    if (max < min) {
        
        return -1;
        
    } else {
        
        int midpoint = ((max - min) / 2 ) + min;
        
        if ([array[midpoint] intValue] < target) {
            
            return binarySearch(array, target, midpoint + 1, max);
            
        } else if ([array[midpoint] intValue] > target) {
                
                return binarySearch(array, target, min, midpoint -1);
            }
        
        return midpoint;
            
    }


}


int main(int argc, const char * argv[]) {
    @autoreleasepool {

            NSArray *array = @[@1, @2, @3, @4, @5, @6, @7, @8, @9, @10, @11, @12, @13, @14, @15, @16, @17, @18, @19, @20];
        
            int min = 0;
            int max = 20;
            int target = 12;
        
        int found = binarySearch(array, target, min, max);
        
        NSLog(@"I found the target number at %i, it's %@", found, array[found]);
        
        }
        
        return 0;
            
            
}

