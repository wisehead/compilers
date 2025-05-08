/*
 * my_struct.h
 *
 *  Created on: 2017年7月12日
 *      Author: Think
 */

#ifndef MY_STRUCT_H_
#define MY_STRUCT_H_


#include <sys/types.h>
#include "my_def.h"

#pragma pack(1)


// 消息头
typedef struct __stHeadReq
{
    int nClientId;                                 // 请求系统的来源，由服务端进行分配
    int nExtClientId;                              //
    int nUmsSeq;                                   // UmsSeq，由umsRouter取自DB
    int nMsgType;                                  // 消息类型，即原"接口功能代码"，参见附录"消息类型"
    int nSequence;                                 // 协议包的序列号，每个数据包的序列号要求不能重复，短连接可以不需要，长连接则需要
    int nLen;                                      // 包体的长度
}stHeadReq;



#pragma pack( )

#endif /* MY_STRUCT_H_ */
