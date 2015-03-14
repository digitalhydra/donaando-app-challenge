//
//  CategoriasViewController.m
//  donaando
//
//  Created by jairo mejia on 14/03/15.
//  Copyright (c) 2015 jairo y jhon. All rights reserved.
//

#import "CategoriasViewController.h"

@interface CategoriasViewController ()

@end

@implementation CategoriasViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.categorias = @[@"Niños",@"Adultos",@"Huerfanos",@"Adolecentes",@"Bebes",@"Enfermos Terminales",@"Indigentes"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.categorias count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *SimpleIdentifier = @"SimpleIdentifier";
    UITableViewCell *categoria = [tableView dequeueReusableCellWithIdentifier:SimpleIdentifier];
    if (categoria == nil) {
        categoria = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimpleIdentifier];
    }
    
    UIImage *imageCategoria = [UIImage imageNamed:@"kids-icon.png"];
    categoria.imageView.image = imageCategoria;
    
    categoria.textLabel.text = self.categorias[indexPath.row];
    
    return categoria;
}
- (IBAction)backToHome:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
