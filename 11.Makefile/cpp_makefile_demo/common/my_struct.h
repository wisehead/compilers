/*
 * my_struct.h
 *
 *  Created on: 2017��7��12��
 *      Author: Think
 */

#ifndef MY_STRUCT_H_
#define MY_STRUCT_H_


#include <sys/types.h>
#include "my_def.h"

#pragma pack(1)


// ��Ϣͷ
typedef struct __stHeadReq
{
    int nClientId;                                 // ����ϵͳ����Դ���ɷ���˽��з���
    int nExtClientId;                              //
    int nUmsSeq;                                   // UmsSeq����umsRouterȡ��DB
    int nMsgType;                                  // ��Ϣ���ͣ���ԭ"�ӿڹ��ܴ���"���μ���¼"��Ϣ����"
    int nSequence;                                 // Э��������кţ�ÿ�����ݰ������к�Ҫ�����ظ��������ӿ��Բ���Ҫ������������Ҫ
    int nLen;                                      // ����ĳ���
}stHeadReq;



#pragma pack( )

#endif /* MY_STRUCT_H_ */
