//
//  SKDetailViewController.m
//  SKStatefulTableViewControllerDemo
//
//  Created by Shiki on 10/27/13.
//  Copyright (c) 2013 Shiki. All rights reserved.
//

#import "SKDetailViewController.h"

@interface SKDetailViewController ()
- (void)configureView;
@end

@implementation SKDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

  if (self.detailItem) {
      self.detailDescriptionLabel.text = [self.detailItem description];
  }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
