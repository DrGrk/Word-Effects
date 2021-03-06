//
//  main.m
//  Word Effects
//
//  Created by David Guichon on 2017-03-06.
//  Copyright © 2017 David Guichon. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        int x = 1;
        while (x==1){
            
            
            
//C Code for command line input
            char inputChars[225];
            
            printf("input a string:\n");
            
            fgets(inputChars, 225, stdin);
            
            printf("your string is %s\n", inputChars);
            
            
//Convert to Objective-C Code and Ouput
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            NSLog(@"input was: %@\n", inputString);
            
            
//Print Out Menu Of Options
            char inputOptions[2];
            
            printf("Select Option:\n 1 for Operation 1 \n 2 for Operation 2 \n 3 for Operation 3 \n 4 for Operation 4 \n 5 for Operation 5 \n 6 for Operation 6 \n");
    
            fgets(inputOptions, 2, stdin);
 
            printf("You have selected Option: %s\n",inputOptions);


        
            
//Change Input Options to Int
            
            NSString *inputOptionsString = [NSString stringWithUTF8String:inputOptions];
            int inputOptionsNum = [inputOptionsString intValue];
            
            
//Operation 1: Uppercase
            if (inputOptionsNum==1){
                NSString *uppercaseString = [inputString uppercaseString];
                NSLog(@"uppercaseString is: %@", uppercaseString);
            }

//Operation 2: Lowercase
            if (inputOptionsNum==2){
                NSString *lowercaseString = [inputString lowercaseString];
                NSLog(@"lowercaseString is: %@", lowercaseString);
            }
            

//Operation 3: Numberize
            if (inputOptionsNum==3){
                int numberize = [inputString intValue];
                NSLog(@"The conversion: %i, was succesful", numberize);
            }
            

//Operation 4: Canadianize
            if (inputOptionsNum==4){
                NSString *canadianFinish =@" eh?";
                NSString *canadianizedString = [inputString stringByAppendingString:canadianFinish];
                NSLog(@"The following string was successfully Canadianized: %@", canadianizedString);
            }
            

//Operation 5: Respond
            if (inputOptionsNum==5){
                NSString *respond = [inputString substringToIndex:[inputString length] - 1];
                if ([respond hasSuffix:@"?"]){
                    NSLog(@"I don't know");
                }
                if ([respond hasSuffix:@"!"]){
                    NSLog(@"Woah Calm Down");
                }
            }
            
//Operation 6: De-Space It
            if (inputOptionsNum==6){
                NSString *despaceIt = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                NSLog(@"When it is despaced it will say %@", despaceIt);
            }
        
        }
        
    }
    return 0;
}
