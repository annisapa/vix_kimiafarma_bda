    SELECT 
        `vix_kimiafarma`.`p`.`id_invoice` AS `id_invoice`,
        `vix_kimiafarma`.`p`.`tanggal` AS `tanggal`,
        `vix_kimiafarma`.`p`.`id_customer` AS `id_customer`,
        `vix_kimiafarma`.`p`.`nama` AS `nama`,
        `vix_kimiafarma`.`p`.`cabang_sales` AS `cabang_sales`,
        `vix_kimiafarma`.`p`.`group_category` AS `group_category`,
        COUNT(DISTINCT `vix_kimiafarma`.`p`.`id_barang`) AS `total_barang`,
        SUM(`vix_kimiafarma`.`p`.`total_harga`) AS `total_pembelian`
    FROM
        `vix_kimiafarma`.`base_penjualan` `p`
    GROUP BY `vix_kimiafarma`.`p`.`id_invoice` , `vix_kimiafarma`.`p`.`tanggal` , `vix_kimiafarma`.`p`.`id_customer` , `vix_kimiafarma`.`p`.`nama` , `vix_kimiafarma`.`p`.`cabang_sales` , `vix_kimiafarma`.`p`.`group_category`