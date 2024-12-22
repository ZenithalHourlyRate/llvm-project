// RUN: mlir-opt %s -split-input-file -verify-diagnostics | FileCheck %s

//===----------------------------------------------------------------------===//
// Test OpAsmOpInterface
//===----------------------------------------------------------------------===//

func.func @result_name_from_op_asm_type_interface() {
  // CHECK-LABEL: @result_name_from_op_asm_type_interface
  // CHECK: %op_asm_type_interface
  %0 = "test.default_result_name"() : () -> !test.op_asm_type_interface
  return
}