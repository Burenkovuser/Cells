//
//  ViewController.m
//  Cells
//
//  Created by Vasilii on 31.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "ViewController.h"
#import "NameAndColorCell.h"

@interface ViewController ()

@end

@implementation ViewController

static NSString *CellTableIdentifier = @"CellTableIdentifier";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //массив словарей содержение имя и цвет
    self.computers = @[@{@"Name" : @"MacBook", @"Color" : @"White"},
                       @{@"Name" : @"MacBook Pro", @"Color" : @"Silver"},
                       @{@"Name" : @"iMac", @"Color" : @"Silver"},
                       @{@"Name" : @"Mac Mini", @"Color" : @"Silver"},
                       @{@"Name" : @"Mac Pro", @"Color" : @"Silver"}];
    
    UITableView *tableView = (id)[self.view viewWithTag:1];
    [tableView registerClass:[NameAndColorCell class] forCellReuseIdentifier:CellTableIdentifier];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.computers count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NameAndColorCell *cell = [tableView dequeueReusableCellWithIdentifier:CellTableIdentifier];
    NSDictionary *rowData = self.computers[indexPath.row];//indexPath определяет строку таблицы в которой находится ячейка
    cell.name = rowData[@"Name"];
    cell.color = rowData[@"Color"];
    
    return cell;
}

#pragma mark UITableViewDelegate

@end
