//
//  List.h
//  
//
//  Created by Leonel Pacehco on 6/19/15.
//
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface List : NSManagedObject

@property (nonatomic, retain) NSString * item;
@property (nonatomic, retain) NSString * note;
@property (nonatomic, retain) NSString * qty;

@end
