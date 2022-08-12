#include "rvcc.h"

// {TY_INT}构造了一个数据结构，(Type)强制类型转换为struct，然后&取地址
// 全局变量TyInt，用来将Type赋值为int类型
Type *TyInt = &(Type){TY_INT};

// 判断Type是否为int类型
bool isInteger(Type *Ty) { return Ty->Kind == TY_INT; }

// 指针类型，并且指向基类
Type *pointerTo(Type *Base) {
  Type *Ty = calloc(1, sizeof(Type));
  Ty->Kind = TY_PTR;
  Ty->Base = Base;
  return Ty;
}

// 为节点内的所有节点添加类型
void addType(Node *Nd) {
  // 判断 节点是否为空 或者 节点类型已经有值，那么就直接返回
  if (!Nd || Nd->Ty)
    return;

  // 递归访问所有节点以增加类型
  addType(Nd->LHS);
  addType(Nd->RHS);
  addType(Nd->Cond);
  addType(Nd->Then);
  addType(Nd->Els);
  addType(Nd->Init);
  addType(Nd->Inc);

  // 访问链表内的所有节点以增加类型
  for (Node *N = Nd->Body; N; N = N->Next)
    addType(N);

  switch (Nd->Kind) {
  // 节将节点类型设为 节点左部的类型
  case ND_ADD:
  case ND_SUB:
  case ND_MUL:
  case ND_DIV:
  case ND_NEG:
  case ND_ASSIGN:
    Nd->Ty = Nd->LHS->Ty;
    return;
  // 将节点类型设为 int
  case ND_EQ:
  case ND_NE:
  case ND_LT:
  case ND_LE:
  case ND_NUM:
  case ND_FUNCALL:
    Nd->Ty = TyInt;
    return;
  // 将节点类型设为 变量的类型
  case ND_VAR:
    Nd->Ty = Nd->Var->Ty;
    return;
  // 将节点类型设为 指针，并指向左部的类型
  case ND_ADDR:
    Nd->Ty = pointerTo(Nd->LHS->Ty);
    return;
  // 节点类型：如果解引用指向的是指针，则为指针指向的类型；否则报错
  case ND_DEREF:
    if (Nd->LHS->Ty->Kind != TY_PTR)
      errorTok(Nd->Tok, "invalid pointer dereference");
    Nd->Ty = Nd->LHS->Ty->Base;
    return;
  default:
    break;
  }
}
