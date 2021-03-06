/*library: nnbd=true*/
import "opt_out.dart";
import "dart:async";

Type typeOf<X>() => X;

/*class: C:A<FutureOr<int?>!>,C,Object*/
class C extends A<FutureOr<int?>> {
  /*member: C.getType:Type* Function()**/
}

/*class: D:A<FutureOr<int!>!>,D,Object*/
class D extends A<FutureOr<int>> {
  /*member: D.getType:Type* Function()**/
}

/*class: E:A<FutureOr<int?>?>,B,C,E,Object*/
class E extends B implements C {
  /*member: E.getType:Type* Function()**/
}

main() {
  print(typeOf<FutureOr<int?>>() == E().getType());
  print(typeOf<FutureOr<int>>() == E().getType());
}
