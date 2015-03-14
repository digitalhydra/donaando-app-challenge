//
//  categoriasTableViewController.m
//  donaando
//
//  Created by jairo mejia on 14/03/15.
//  Copyright (c) 2015 jairo y jhon. All rights reserved.
//

#import "categoriasTableViewController.h"

@interface categoriasTableViewController ()

@end

@implementation categoriasTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)backToHome:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 15;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return 5;
}

@end
