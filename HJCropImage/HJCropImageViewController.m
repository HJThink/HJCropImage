//
//  HJCropImageViewController.m
//  HJCropImageExample
//
//  Created by HeJun<mail@hejun.org> on 29/11/2016.
//  Copyright © 2016 HeJun. All rights reserved.
//

#import "HJCropImageViewController.h"
#import <MobileCoreServices/MobileCoreServices.h>

@interface HJCropImageViewController ()<UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@end

@implementation HJCropImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)showImagePicker {
	UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
	imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
	imagePicker.mediaTypes = [[NSArray alloc] initWithObjects:(NSString *)kUTTypeImage, nil];
	imagePicker.allowsEditing = NO;
	imagePicker.delegate = self;
}

#pragma mark - UIImagePickerControllerDelegate
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
	UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
	
	//处理裁剪
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
	[picker dismissViewControllerAnimated:NO completion:nil];
}

@end
