//
//  ViewController.h
//  Cells
//
//  Created by Vasilii on 31.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property(copy, nonatomic) NSArray *computers;

@end

