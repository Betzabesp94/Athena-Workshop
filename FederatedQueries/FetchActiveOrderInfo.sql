SELECT *
                    FROM "lambda:redis".redis.active_orders ao
                    LEFT JOIN "mysql".sales.orders o
                        ON ao.orderkey = o_orderkey
                    LEFT JOIN "mysql".sales.customer c
                        ON o_custkey = c_custkey
                    LEFT JOIN hbase.default.lineitem l
                        ON "line:l_orderkey" = o_orderkey
                    LEFT JOIN "dynamo_db".default.part p
                        ON "line:l_partkey" = p.p_partkey
                    LEFT JOIN "dynamo_db".default.partsupp ps
                        ON p.p_partkey = ps.ps_partkey
                    LEFT JOIN "mysql".sales.supplier s
                        ON ps_suppkey = s_suppkey;
