; ModuleID = "meu_modulo.bc"
target triple = "unknown-unknown-unknown"
target datalayout = ""

define i32 @"soma"(i32 %"a", i32 %"b") 
{
entry:
  %".4" = add i32 %"a", %"b"
  ret i32 %".4"
}

define i32 @"main"() 
{
entry:
  %"a" = alloca i32
  store i32 12, i32* %"a"
  %"b" = alloca i32
  store i32 30, i32* %"b"
  %"res" = alloca i32
  %".4" = load i32, i32* %"a"
  %".5" = load i32, i32* %"b"
  %".6" = call i32 @"soma"(i32 %".4", i32 %".5")
  store i32 %".6", i32* %"res"
  ret i32* %"res"
}
