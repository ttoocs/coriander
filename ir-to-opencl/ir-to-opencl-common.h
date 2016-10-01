#pragma once

// #include "llvm/IR/Instructions.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/DerivedTypes.h"

std::string dumpType(llvm::Type *type);
std::string dumpFunctionType(llvm::FunctionType *fn);
std::string dumpPointerType(llvm::PointerType *ptr);
std::string dumpIntegerType(llvm::IntegerType *type);
std::string dumpStructType(llvm::StructType *type);
std::string dumpType(llvm::Type *type);
