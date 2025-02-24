; NOTE: Assertions have been autogenerated by utils/update_test_checks.py UTC_ARGS: --version 5
; RUN: opt < %s -passes=instcombine -S | FileCheck %s

define double @zero(double %value) {
; CHECK-LABEL: define double @zero(
; CHECK-SAME: double [[VALUE:%.*]]) {
; CHECK-NEXT:    ret double 1.000000e+00
;
  %res = call double @llvm.pow.f64(double %value, double 0.000000e+00)
  ret double %res
}

define double @minus_zero(double %value) {
; CHECK-LABEL: define double @minus_zero(
; CHECK-SAME: double [[VALUE:%.*]]) {
; CHECK-NEXT:    ret double 1.000000e+00
;
  %res = call double @llvm.pow.f64(double %value, double -0.000000e+00)
  ret double %res
}

define double @fast_zero(double %value) {
; CHECK-LABEL: define double @fast_zero(
; CHECK-SAME: double [[VALUE:%.*]]) {
; CHECK-NEXT:    ret double 1.000000e+00
;
  %res = call fast double @llvm.pow.f64(double %value, double 0.000000e+00)
  ret double %res
}

define double @fast_minus_zero(double %value) {
; CHECK-LABEL: define double @fast_minus_zero(
; CHECK-SAME: double [[VALUE:%.*]]) {
; CHECK-NEXT:    ret double 1.000000e+00
;
  %res = call fast double @llvm.pow.f64(double %value, double -0.000000e+00)
  ret double %res
}

define <2 x double> @vec_zero(<2 x double> %value) {
; CHECK-LABEL: define <2 x double> @vec_zero(
; CHECK-SAME: <2 x double> [[VALUE:%.*]]) {
; CHECK-NEXT:    ret <2 x double> <double 1.000000e+00, double 1.000000e+00>
;
  %res = call <2 x double> @llvm.pow.v2f64(<2 x double> %value, <2 x double> <double 0.000000e+00, double 0.000000e+00>)
  ret <2 x double> %res
}

define <2 x double> @vec_minus_zero(<2 x double> %value) {
; CHECK-LABEL: define <2 x double> @vec_minus_zero(
; CHECK-SAME: <2 x double> [[VALUE:%.*]]) {
; CHECK-NEXT:    ret <2 x double> <double 1.000000e+00, double 1.000000e+00>
;
  %res = call <2 x double> @llvm.pow.v2f64(<2 x double> %value, <2 x double> <double -0.000000e+00, double -0.000000e+00>)
  ret <2 x double> %res
}

define <2 x double> @vec_fast_zero(<2 x double> %value) {
; CHECK-LABEL: define <2 x double> @vec_fast_zero(
; CHECK-SAME: <2 x double> [[VALUE:%.*]]) {
; CHECK-NEXT:    ret <2 x double> <double 1.000000e+00, double 1.000000e+00>
;
  %res = call fast <2 x double> @llvm.pow.v2f64(<2 x double> %value, <2 x double> <double 0.000000e+00, double 0.000000e+00>)
  ret <2 x double> %res
}

define <2 x double> @vec_fast_minus_zero(<2 x double> %value) {
; CHECK-LABEL: define <2 x double> @vec_fast_minus_zero(
; CHECK-SAME: <2 x double> [[VALUE:%.*]]) {
; CHECK-NEXT:    ret <2 x double> <double 1.000000e+00, double 1.000000e+00>
;
  %res = call fast <2 x double> @llvm.pow.v2f64(<2 x double> %value, <2 x double> <double -0.000000e+00, double -0.000000e+00>)
  ret <2 x double> %res
}

declare double @llvm.pow.f64(double, double)
declare <2 x double> @llvm.pow.v2f64(<2 x double>, <2 x double>)
