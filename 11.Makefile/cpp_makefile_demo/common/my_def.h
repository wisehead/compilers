#ifndef _MY_DEF_H
#define _MY_DEF_H

//数据类型定义 old
typedef short int sint;

//数据类型 new
typedef char                SByte;
typedef unsigned char       Byte;
typedef short               Int16;
typedef unsigned short      UInt16;
typedef int                 Int32;
typedef unsigned int        UInt32;
typedef long long           Int64;
typedef unsigned long long  UInt64;
typedef float               Single;
typedef double              Double;
typedef long                LONG;
typedef unsigned long       ULONG;

 
// Define dsmp errno
#define DSMP_SUCCESS                    0
#define USER_NOTEXIST_ERROR             1
#define PASSWORD_ERROR                  2
#define ORDER_NOTEXIST_ERROR            10
#define DATABASE_ERROR                  99
#define INVALID_QUEST_ERROR             100
#define OP_TYPE_ERROR                   203
#define OTHER_ERROR                     999

#define BOSS_ERR                        1000
#define CMAIL_ERR                       2000
#define DBL_ERR                         3000
#define DB_ERR                          4000
#define CB_ERR                          5000
#define PMAIL_ERR                       6000
#define PUBLIC_ERR                      7000
#define FETION_ERR                      8000


// Define len
#define Len4MsgHead                     24
#define Len4UserNumber                  64         
#define Len4Mobile                      32         
#define Len4SpsId                       32         
#define Len4SpNumber                    21         
#define Len4ServItem                    20  
#define Len4StartSendTime               20                
#define Len4ServiceType                 32 
#define Len4TmpString                   1024  
#define Len4Date                        20
#define Len4Level                       20
#define Len4IP                          64
#define Len4b32                         32
#define Len4b64                         64
#define Len4b128                        128
#define Len4b256                        256
#define Len4QQ                          16
#define Len4Code                        6
#define Len4Config                      1024

#define Len4BillType                    2
#define Len4LimitKey                    50
#define Len4LimitDomain                 200


// Define message type
#define MACQueryPresent                 1001    //套餐信息查询
#define MACQueryInfo                    1002    //业务信息查询
#define MACQueryPacket                  1003    //套餐基本信息查询
#define MACLoginAuth                    2001    //注册鉴权
#define MACModifyName                   3001    //别名操作
#define MACQueryName                    3005    //别名查询
#define MACModifyPwd                    3002    //修改密码
#define MACQueryPrefix                  3004    //号段信息查询
#define MACCHECKPWD                     3007    //用户密码校验
#define MACQueryBase                    4001    //个人基础信息查询
#define MACQueryMail                    4009    //个邮用户信息查询专用

#define MACPacketReg                    2002    //注册
#define MACPacketUnReg                  2003    //注销
#define MACPacketUpdate                 2004    //变更
#define MACPacketPause                  2005    //套餐暂停
#define MACPacketResume                 2006    //套餐恢复
#define MACUserDel                      2007    //销户
#define MACMobileUpdate                 2008    //换号
#define MACQueryUserInfo                4002    //个人资料信息采集以及查询
#define MACQueryContact                 4003    //个人联系信息采集以及查询
#define MACQueryInterest                4004    //个人爱好信息采集以及查询
#define MACQueryEducate                 4005    //个人教育经历信息采集以及查询
#define MACQueryWork                    4006    //个人工作经历信息采集以及查询
#define MACQueryMobile                  4007    //个人手机信息采集以及查询
#define MACQueryIntegral                4008    //个人积分信息采集以及查询

#define MACKVQuery                      5001    //139邮箱杀毒订购关系查询
#define MACKVSub                        5002    //使用139邮箱杀毒后次数减一

#define MACPEResume                     2009    //PE激活
#define MACQueryMealId                  2010    //省份套餐查询

#define MACInsertIntegral               2011    //积分
#define MACSetNotify                    2012    //邮件到达通知
#define MACSetBill                      2013    //修改账单
#define MACQueryConfig                  2014    //查询配置参数

#define MACQueryNetdisk                 2016    //查询套餐的网盘容量


// Define
typedef enum _tagenuBool
{
    True    = 1,
    False   = 0,
    BOOL_FALSE  = ( 1 < 0 ),
    BOOL_TRUE   = ( 1 > 0 )
}enuBool;
typedef enuBool Bool;

// Memcached
#define MEMMASTERKEY                    "smp_mem"
#define MEMBLACKLISTKEY                 "smp_black_list_mem"
#define MEMSMSCONTENTKEY                "smp_sms_content_mem"
#define MEMIPLIMIT                      "smp_ip_limit_mem"
#define SMSCONTENTID                    "sid"
#define MAXMEMSIZE                      2000
#define MAXWORKROW                      5000


#endif

