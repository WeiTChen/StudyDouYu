//
//  Define.h
//  口算达人
//
//  Created by William on 16/2/18.
//  Copyright © 2016年 William. All rights reserved.
//

#ifndef Define_h
#define Define_h

#define JPUSH_APPKEY @"2a06c9c04dbf06359a95b6af" //我自己的极光推送key

#define HEXCOLOR(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
#define STRING_SIZE_FONT_HEIGHT(_width_, _string_, _fsize_) [_string_ boundingRectWithSize:CGSizeMake(_width_, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:_fsize_]} context:nil].size;


#define SCREEN_W [UIScreen mainScreen].bounds.size.width
#define SCREEN_H [UIScreen mainScreen].bounds.size.height

#define FORMAT(string) [NSString stringWithFormat:@"%@",string]

#define RGBCOLOR(R,G,B) [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1]

#define USER_DEFAULT [NSUserDefaults standardUserDefaults]


//外网正式地址
#define HTTP_KSDR   @"http://cloud.wassk.cn:81/jl-ksdr/"
#define HTTP_KSDRL   @"http://cloud.wassk.cn:81/jl-ksdr/reg/"

//机器测试环境
//#define HTTP_KSDR         @"http://128.0.3.185:8080/jl-ksdr/"
//#define HTTP_KSDRL         @"http://128.0.3.185:8080/jl-ksdr/reg/"

//253环境
//#define HTTP_KSDR         @"http://128.0.3.253:48080/jl-ksdr/"
//#define HTTP_KSDRL         @"http://128.0.3.253:48080/jl-ksdr/reg/"

#endif /* Define_h */
