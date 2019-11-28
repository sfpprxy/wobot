--   AND item_class IN ('材料', '消耗品', '杂项')
--   AND sub_class NOT IN ('食物和饮料', '肉类1')
--   --AND sub_class IN ('垃圾')
--   --AND name IN ('元素火焰','皇血草','银矿石','毛料','铁矿石','坚固的石头','粗糙的石头','铜矿石','火焰精华')
--   AND market NOTNULL
--   AND market > 400
--   AND vendor_sell NOT BETWEEN 1 AND 3
--   AND quantity > 100
--   AND vindex > 4

---- 清货跑量

-- min
dbminbuyout + 1c

-- max
140%market

-- normal
iflt(
    dbmarket,
    86%market,
    1c,
    max(95%dbmarket, dbminbuyout+2c))

---- 清货跑量


---- 期望利润

-- min
ifgt(dbmarket, 90%market, min(max(95%dbmarket - 2c, dbminbuyout + 2c), 180%market - 2c), 100g)

-- max
180%market

-- normal
iflt(
    dbmarket,
    90%market,
    1c,
    ifgt(
        dbmarket,
        market,
        min(max(96%dbmarket - 1c, dbminbuyout + 2c), 180%market - 1c),
        max(96%dbmarket - 1c, dbminbuyout + 2c)))

---- 期望利润

