module {

// Not implemented because we don't use index: arith.index_cast, arith.index_castui
// Not implemented because we don't have constraints for integer attribute: arith.constant

  irdl.dialect @arith {
    irdl.operation @addf {
      %bf16 = irdl.is bf16
      %f16 = irdl.is f16
      %f32 = irdl.is f32
      %f64 = irdl.is f64
      %f80 = irdl.is f80
      %f128 = irdl.is f128
      %T = irdl.any_of(%bf16, %f16, %f32, %f64, %f80, %f128)
      irdl.operands(%T, %T)
      irdl.results(%T)
    }

    irdl.operation @addi {
      %integer = irdl.base "!builtin.integer"
      irdl.operands(%integer, %integer)
      irdl.results(%integer)
    }

    irdl.operation @addui_extended {
      %integer = irdl.base "!builtin.integer"
      %i1 = irdl.is i1
      irdl.operands(%integer, %integer)
      irdl.results(%integer, %i1)
    }

    irdl.operation @andi {
      %i1 = irdl.is i1
      %integer = irdl.base "!builtin.integer"
      %T = irdl.any_of(%integer)
      irdl.operands(%integer, %integer)
      irdl.results(%integer)
    }

    irdl.operation @bitcast {
      %integer1 = irdl.base "!builtin.integer"
      %integer2 = irdl.base "!builtin.integer"
      %bf16 = irdl.is bf16
      %f16 = irdl.is f16
      %f32 = irdl.is f32
      %f64 = irdl.is f64
      %f80 = irdl.is f80
      %f128 = irdl.is f128
      %input = irdl.any_of(%integer1, %bf16, %f16, %f32, %f64, %f80, %f128)
      %output = irdl.any_of(%integer2, %bf16, %f16, %f32, %f64, %f80, %f128)
      irdl.operands(%input)
      irdl.results(%output)
    }
 
    irdl.operation @ceildivsi {
      %integer = irdl.base "!builtin.integer"
      irdl.operands(%integer, %integer)
      irdl.results(%integer)
    }

    irdl.operation @ceildivui {
      %integer = irdl.base "!builtin.integer"
      irdl.operands(%integer, %integer)
      irdl.results(%integer)
    }

    irdl.operation @cmpf {
      %i1 = irdl.is i1
      %bf16 = irdl.is bf16
      %f16 = irdl.is f16
      %f32 = irdl.is f32
      %f64 = irdl.is f64
      %f80 = irdl.is f80
      %f128 = irdl.is f128
      %0 = irdl.is 0 : i64
      %1 = irdl.is 1 : i64
      %2 = irdl.is 2 : i64
      %3 = irdl.is 3 : i64
      %4 = irdl.is 4 : i64
      %5 = irdl.is 5 : i64
      %6 = irdl.is 6 : i64
      %7 = irdl.is 7 : i64
      %8 = irdl.is 8 : i64
      %9 = irdl.is 9 : i64
      %10 = irdl.is 10 : i64
      %11 = irdl.is 11 : i64
      %12 = irdl.is 12 : i64
      %13 = irdl.is 13 : i64
      %14 = irdl.is 14 : i64
      %15 = irdl.is 15 : i64

      %T = irdl.any_of(%bf16, %f16, %f32, %f64, %f80, %f128)
      %predT = irdl.any_of(%0, %1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %12, %13, %14, %15)
      irdl.operands(%T, %T)
      irdl.results(%i1)
      irdl.attributes { "predicate" = %predT }
    }

    irdl.operation @cmpi {
      %integer = irdl.base "!builtin.integer"
      %i1 = irdl.is i1
      %0 = irdl.is 0 : i64
      %1 = irdl.is 1 : i64
      %2 = irdl.is 2 : i64
      %3 = irdl.is 3 : i64
      %4 = irdl.is 4 : i64
      %5 = irdl.is 5 : i64
      %6 = irdl.is 6 : i64
      %7 = irdl.is 7 : i64
      %8 = irdl.is 8 : i64
      %9 = irdl.is 9 : i64

      %predT = irdl.any_of(%0, %1, %2, %3, %4, %5, %6, %7, %8, %9)
      irdl.attributes {"predicate" = %predT}
      irdl.operands(%integer, %integer)
      irdl.results(%i1)
    }

    irdl.operation @divf {
      %bf16 = irdl.is bf16
      %f16 = irdl.is f16
      %f32 = irdl.is f32
      %f64 = irdl.is f64
      %f80 = irdl.is f80
      %f128 = irdl.is f128
      %T = irdl.any_of(%bf16, %f16, %f32, %f64, %f80, %f128)
      irdl.operands(%T, %T)
      irdl.results(%T)
    }

    irdl.operation @divsi {
      %integer = irdl.base "!builtin.integer"
      irdl.operands(%integer, %integer)
      irdl.results(%integer)
    }

    irdl.operation @divui {
      %integer = irdl.base "!builtin.integer"
      irdl.operands(%integer, %integer)
      irdl.results(%integer)
    }

    irdl.operation @extf {
      %bf16 = irdl.is bf16
      %f16 = irdl.is f16
      %f32 = irdl.is f32
      %f64 = irdl.is f64
      %f80 = irdl.is f80
      %f128 = irdl.is f128
      %T1 = irdl.any_of(%bf16, %f16, %f32, %f64, %f80, %f128)
      %T2 = irdl.any_of(%bf16, %f16, %f32, %f64, %f80, %f128)
      irdl.operands(%T1)
      irdl.results(%T2)
    }

    irdl.operation @extsi {
      %T1 = irdl.base "!builtin.integer"
      %T2 = irdl.base "!builtin.integer"
      irdl.operands(%T1)
      irdl.results(%T2)
    }

    irdl.operation @extui {
      %T1 = irdl.base "!builtin.integer"
      %T2 = irdl.base "!builtin.integer"
      irdl.operands(%T1)
      irdl.results(%T2)
    }

    irdl.operation @floordivsi {
      %integer = irdl.base "!builtin.integer"
      irdl.operands(%integer, %integer)
      irdl.results(%integer)
    }

    irdl.operation @fptosi {
      %integer = irdl.base "!builtin.integer"
      
      %bf16 = irdl.is bf16
      %f16 = irdl.is f16
      %f32 = irdl.is f32
      %f64 = irdl.is f64
      %f80 = irdl.is f80
      %f128 = irdl.is f128
      
      %Tf = irdl.any_of(%bf16, %f16, %f32, %f64, %f80, %f128)
      irdl.operands(%Tf)
      irdl.results(%integer)
    }

    irdl.operation @fptoui {
      %integer = irdl.base "!builtin.integer"
      
      %bf16 = irdl.is bf16
      %f16 = irdl.is f16
      %f32 = irdl.is f32
      %f64 = irdl.is f64
      %f80 = irdl.is f80
      %f128 = irdl.is f128
      
      %Tf = irdl.any_of(%bf16, %f16, %f32, %f64, %f80, %f128)
      irdl.operands(%Tf)
      irdl.results(%integer)
    }

    irdl.operation @maxf {
      %bf16 = irdl.is bf16
      %f16 = irdl.is f16
      %f32 = irdl.is f32
      %f64 = irdl.is f64
      %f80 = irdl.is f80
      %f128 = irdl.is f128
      %T = irdl.any_of(%bf16, %f16, %f32, %f64, %f80, %f128)
      irdl.operands(%T, %T)
      irdl.results(%T)
    }

    irdl.operation @maxsi {
      %integer = irdl.base "!builtin.integer"
      irdl.operands(%integer, %integer)
      irdl.results(%integer)
    }

    irdl.operation @maxui {
      %integer = irdl.base "!builtin.integer"
      irdl.operands(%integer, %integer)
      irdl.results(%integer)
    }

    irdl.operation @minf {
      %bf16 = irdl.is bf16
      %f16 = irdl.is f16
      %f32 = irdl.is f32
      %f64 = irdl.is f64
      %f80 = irdl.is f80
      %f128 = irdl.is f128
      %T = irdl.any_of(%bf16, %f16, %f32, %f64, %f80, %f128)
      irdl.operands(%T, %T)
      irdl.results(%T)
    }

    irdl.operation @minsi {
      %integer = irdl.base "!builtin.integer"
      irdl.operands(%integer, %integer)
      irdl.results(%integer)
    }

    irdl.operation @minui {
      %integer = irdl.base "!builtin.integer"
      irdl.operands(%integer, %integer)
      irdl.results(%integer)
    }

    irdl.operation @mulf {
      %bf16 = irdl.is bf16
      %f16 = irdl.is f16
      %f32 = irdl.is f32
      %f64 = irdl.is f64
      %f80 = irdl.is f80
      %f128 = irdl.is f128
      %T = irdl.any_of(%bf16, %f16, %f32, %f64, %f80, %f128)
      irdl.operands(%T, %T)
      irdl.results(%T)
    }

    irdl.operation @muli {
      %integer = irdl.base "!builtin.integer"
      irdl.operands(%integer, %integer)
      irdl.results(%integer)
    }

    irdl.operation @mului_extended {
      %integer = irdl.base "!builtin.integer"
      irdl.operands(%integer, %integer)
      irdl.results(%integer, %integer)
    }

    irdl.operation @negf {
      %bf16 = irdl.is bf16
      %f16 = irdl.is f16
      %f32 = irdl.is f32
      %f64 = irdl.is f64
      %f80 = irdl.is f80
      %f128 = irdl.is f128
      %T = irdl.any_of(%bf16, %f16, %f32, %f64, %f80, %f128)
      irdl.operands(%T)
      irdl.results(%T)
    }

    irdl.operation @ori {
      %integer = irdl.base "!builtin.integer"
      irdl.operands(%integer, %integer)
      irdl.results(%integer)
    }

    irdl.operation @remf {
      %bf16 = irdl.is bf16
      %f16 = irdl.is f16
      %f32 = irdl.is f32
      %f64 = irdl.is f64
      %f80 = irdl.is f80
      %f128 = irdl.is f128
      %T = irdl.any_of(%bf16, %f16, %f32, %f64, %f80, %f128)
      irdl.operands(%T, %T)
      irdl.results(%T)
    }

    irdl.operation @remsi {
      %integer = irdl.base "!builtin.integer"
      irdl.operands(%integer, %integer)
      irdl.results(%integer)
    }

    irdl.operation @remui {
      %integer = irdl.base "!builtin.integer"
      irdl.operands(%integer, %integer)
      irdl.results(%integer)
    }

    irdl.operation @select {
      %i1 = irdl.is i1
      %T = irdl.any
      irdl.operands(%i1, %T, %T)
      irdl.results(%T)
    }

    irdl.operation @shli {
      %integer = irdl.base "!builtin.integer"
      irdl.operands(%integer, %integer)
      irdl.results(%integer)
    }

    irdl.operation @shrsi {
      %integer = irdl.base "!builtin.integer"
      irdl.operands(%integer, %integer)
      irdl.results(%integer)
    }

    irdl.operation @shrui {
      %integer = irdl.base "!builtin.integer"
      irdl.operands(%integer, %integer)
      irdl.results(%integer)
    }

    irdl.operation @sitofp {
      %integer = irdl.base "!builtin.integer"
      
      %bf16 = irdl.is bf16
      %f16 = irdl.is f16
      %f32 = irdl.is f32
      %f64 = irdl.is f64
      %f80 = irdl.is f80
      %f128 = irdl.is f128
      
      %Tf = irdl.any_of(%bf16, %f16, %f32, %f64, %f80, %f128)
      irdl.operands(%integer)
      irdl.results(%Tf)
    }

    irdl.operation @subf {
      %bf16 = irdl.is bf16
      %f16 = irdl.is f16
      %f32 = irdl.is f32
      %f64 = irdl.is f64
      %f80 = irdl.is f80
      %f128 = irdl.is f128
      %T = irdl.any_of(%bf16, %f16, %f32, %f64, %f80, %f128)
      irdl.operands(%T, %T)
      irdl.results(%T)
    }


    irdl.operation @subi {
      %integer = irdl.base "!builtin.integer"
      irdl.operands(%integer, %integer)
      irdl.results(%integer)
    }

    irdl.operation @truncf {
      %bf16 = irdl.is bf16
      %f16 = irdl.is f16
      %f32 = irdl.is f32
      %f64 = irdl.is f64
      %f80 = irdl.is f80
      %f128 = irdl.is f128
      %T1 = irdl.any_of(%bf16, %f16, %f32, %f64, %f80, %f128)
      %T2 = irdl.any_of(%bf16, %f16, %f32, %f64, %f80, %f128)
      irdl.operands(%T1)
      irdl.results(%T2)
    }


    irdl.operation @trunci {
      %integer1 = irdl.base "!builtin.integer"
      %integer2 = irdl.base "!builtin.integer"
      irdl.operands(%integer1)
      irdl.results(%integer2)
    }

    irdl.operation @uitofp {
      %integer = irdl.base "!builtin.integer"
      
      %bf16 = irdl.is bf16
      %f16 = irdl.is f16
      %f32 = irdl.is f32
      %f64 = irdl.is f64
      %f80 = irdl.is f80
      %f128 = irdl.is f128
      
      %Tf = irdl.any_of(%bf16, %f16, %f32, %f64, %f80, %f128)
      irdl.operands(%integer)
      irdl.results(%Tf)
    }

    irdl.operation @xori {
      %integer = irdl.base "!builtin.integer"
      irdl.operands(%integer, %integer)
      irdl.results(%integer)
    }
  }
}