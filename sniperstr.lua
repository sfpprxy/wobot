--   AND item_class IN ('材料', '消耗品', '杂项')
--   AND sub_class NOT IN ('食物和饮料', '肉类1')
--   --AND sub_class IN ('垃圾')
--   --AND name IN ('元素火焰','皇血草','银矿石','毛料','铁矿石','坚固的石头','粗糙的石头','铜矿石','火焰精华')
--   AND market NOTNULL
--   AND market > 400
--   AND vendor_sell NOT BETWEEN 1 AND 3
--   AND quantity > 100
--   AND vindex > 4

local rm=ifgt(
    change,
    0,
    market+20%change,
    market+150%change
)

-- 材料 78%
iflt(
    market,
    400c,
    1c,
    iflt(
        auctions,
        12,
        1c,
        iflt(
            qty,
            60,
            1c,
            iflt(
                vindex,
                7,
                1c,
                ifgt(
                    stock,
                    maxstock,
                    1c,
                    rm * max(10%(1-stock/80)+0.7, 0.7))
            )
        )
    )
)

-- 材料 畅销
iflt(
    market,
    400c,
    1c,
    iflt(
        auctions,
        12,
        1c,
        iflt(
            qty,
            60,
            1c,
            iflt(
                vindex, 
                7,
                1c,
                ifgt(
                    stock,
                    maxstock*10,
                    1c,
                    rm * 0.75)
            )
        )
    )
)

-- 材料 走低
iflt(
    market,
    400c,
    1c,
    iflt(
        auctions,
        12,
        1c,
        iflt(
            qty,
            50,
            1c,
            iflt(
                vindex,
                7,
                1c,
                ifgt(
                    stock,
                    maxstock,
                    1c,
                    rm * max(10%(1-stock/80)+0.6, 0.6))
            )
        )
    )
)

-- 消耗品 80%
iflt(
    market,
    400c,
    1c,
    iflt(
        auctions,
        12,
        1c,
        iflt(
            qty,
            40,
            1c,
            iflt(
                vindex,
                7,
                1c,
                ifgt(
                    stock,
                    maxstock,
                    1c,
                    ifgt(
                        change,
                        0,
                        72%(market+30%change),
                        72%(market+150%change)
                    ))
            )
        )
    )
)
-- 肉类 50%

min(market, crafting, iflt(auctions, 5, vendor), convert(market))
95%(market + 50%change)