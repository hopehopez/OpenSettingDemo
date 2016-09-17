//
//  ViewController.m
//  OpenSettingDemo
//
//  Created by user on 16/9/13.
//  Copyright © 2016年 user. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSArray *dataArray;
@property (nonatomic, strong) NSArray *urls;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _dataArray = @[@"About",
                   @"Accessibility",
                   @"Airplane Mode On",
                   @"Auto-Lock",
                   @"Brightness",
                   
                   @"Bluetooth",
                   @"Date & Time",
                   @"FaceTime",
                   @"General",
                   @"Keyboard",
                   
                   @" iCloud Storage & Backup",
                   @"iCloud",
                   @"International",
                   @"Location Services",
                   @"Music",
                   
                   @"Music Equalizer",
                   @"Music Volume Limit",
                   @"Network",
                   @"Nike + iPod",
                   @"Notes",
                   
                   @"Notification",
                   @"Phone",
                   @"Photos",
                   @"Profile",
                   @"Reset",
                   
                   @"Safari",
                   @"Siri",
                   @"Sounds",
                   @"Software Update",
                   @"Store",
                   
                   @"Twitter",
                   @"Usage",
                   @"VPN",
                   @"Wallpaper",
                   @"Wi-Fi"];
    _urls = @[@"prefs:root=General&path=About",
              @"prefs:root=General&path=ACCESSIBILITY",
              @"prefs:root=AIRPLANE_MODE",
              @"prefs:root=General&path=AUTOLOCK",
              @"prefs:root=Brightness",
              
              @"prefs:root=General&path=Bluetooth",
              @"prefs:root=General&path=DATE_AND_TIME",
              @"prefs:root=FACETIME",
              @"prefs:root=General",
              @"prefs:root=General&path=Keyboard",
              
              @"prefs:root=CASTLE",
              @"prefs:root=CASTLE&path=STORAGE_AND_BACKUP",
              @"prefs:root=General&path=INTERNATIONAL",
              @"prefs:root=LOCATION_SERVICES",
              @"prefs:root=MUSIC",
              
              @"prefs:root=MUSIC&path=EQ",
              @"prefs:root=MUSIC&path=VolumeLimit",
              @"prefs:root=General&path=Network",
              @"prefs:root=NIKE_PLUS_IPOD",
              @"prefs:root=NOTES",
              
              @"prefs:root=NOTIFICATIONS_ID",
              @"prefs:root=Phone",
              @"prefs:root=Photos",
              @"prefs:root=General&path=ManagedConfigurationList",
              @"prefs:root=General&path=Reset",
              
              @"prefs:root=Safari",
              @"prefs:root=General&path=Assistant",
              @"prefs:root=Sounds",
              @"prefs:root=General&path=SOFTWARE_UPDATE_LINK",
              @"prefs:root=STORE",
              
              @"prefs:root=TWITTER",
              @"prefs:root=General&path=USAGE",
              @"prefs:root=General&path=Network/VPN",
              @"prefs:root=Wallpaper",
              @"prefs:root=WIFI"];
    
}

/*
 About — prefs:root=General&path=About
 Accessibility — prefs:root=General&path=ACCESSIBILITY
 Airplane Mode On — prefs:root=AIRPLANE_MODE
 Auto-Lock — prefs:root=General&path=AUTOLOCK
 Brightness — prefs:root=Brightness
 
 Bluetooth — prefs:root=General&path=Bluetooth
 Date & Time — prefs:root=General&path=DATE_AND_TIME
 FaceTime — prefs:root=FACETIME
 General — prefs:root=General
 Keyboard — prefs:root=General&path=Keyboard
 
 iCloud — prefs:root=CASTLE
 iCloud Storage & Backup — prefs:root=CASTLE&path=STORAGE_AND_BACKUP
 International — prefs:root=General&path=INTERNATIONAL
 Location Services — prefs:root=LOCATION_SERVICES
 Music — prefs:root=MUSIC
 
 Music Equalizer — prefs:root=MUSIC&path=EQ
 Music Volume Limit — prefs:root=MUSIC&path=VolumeLimit
 Network — prefs:root=General&path=Network
 Nike + iPod — prefs:root=NIKE_PLUS_IPOD
 Notes — prefs:root=NOTES
 Notification — prefs:root=NOTIFICATIONS_ID
 Phone — prefs:root=Phone
 Photos — prefs:root=Photos
 Profile — prefs:root=General&path=ManagedConfigurationList
 Reset — prefs:root=General&path=Reset
 Safari — prefs:root=Safari
 Siri — prefs:root=General&path=Assistant
 Sounds — prefs:root=Sounds
 Software Update — prefs:root=General&path=SOFTWARE_UPDATE_LINK
 Store — prefs:root=STORE
 Twitter — prefs:root=TWITTER
 Usage — prefs:root=General&path=USAGE
 VPN — prefs:root=General&path=Network/VPN
 Wallpaper — prefs:root=Wallpaper
 Wi-Fi — prefs:root=WIFI
 */

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ID"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ID"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%ld.%@", indexPath.row, _dataArray[indexPath.row]];
    
    return cell;
    
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSURL *url = [NSURL URLWithString:_urls[indexPath.row]];
    if ([[UIApplication sharedApplication] canOpenURL:url]) {
        [[UIApplication sharedApplication] openURL:url];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
