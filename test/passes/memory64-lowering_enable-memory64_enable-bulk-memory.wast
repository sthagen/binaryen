(module
 (memory $0 i64 1 1)
 (data (i64.const 0) "\00\00\00\00\00\00\00\00\00\00")
 (func $func_1
  (local i64)
  (drop (i32.load (i64.const 4)))
  (drop (i32.load align=1 (i64.const 4)))
  (drop (i32.load align=2 (i64.const 4)))
  (drop (i32.load align=4 (i64.const 4)))
  (drop (i32.load offset=100 (i64.const 4)))
  (drop (i32.load offset=100 align=1 (i64.const 4)))
  (drop (i32.load offset=100 align=2 (i64.const 4)))
  (drop (i32.load offset=100 align=4 (i64.const 4)))
  (drop (i32.load offset=100 align=1 (unreachable)))
  (i32.store (i64.const 4) (i32.const 8))
  (i32.store align=1 (i64.const 4) (i32.const 8))
  (i32.store align=2 (i64.const 4) (i32.const 8))
  (i32.store align=4 (i64.const 4) (i32.const 8))
  (i32.store offset=100 (i64.const 4) (i32.const 8))
  (i32.store offset=100 align=1 (i64.const 4) (i32.const 8))
  (i32.store offset=100 align=2 (i64.const 4) (i32.const 8))
  (i32.store offset=100 align=4 (i64.const 4) (i32.const 8))
  (i32.store offset=100 align=1 (unreachable) (i32.const 8))
  (i32.store offset=100 align=1 (i64.const 4) (unreachable))
  (local.set 0 (memory.size))
  (local.set 0 (memory.grow (i64.const 1)))
  (memory.init 0 (i64.const 1) (i32.const 2) (i32.const 3))
  (memory.fill (i64.const 1) (i32.const 2) (i64.const 3))
  (memory.copy (i64.const 1) (i64.const 2) (i64.const 3))
 )
)
