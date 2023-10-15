    SELECT 
        CONCAT(`j`.`id_invoice`, '_', `j`.`id_barang`) AS `id_penjualan`,
        `j`.`id_invoice` AS `id_invoice`,
        `j`.`id_barang` AS `id_barang`,
        `j`.`tanggal` AS `tanggal`,
        `b`.`nama_barang` AS `nama_barang`,
        `j`.`harga` AS `harga`,
        `j`.`unit` AS `unit`,
        `j`.`jumlah_barang` AS `jumlah_barang`,
        (`j`.`jumlah_barang` * `j`.`harga`) AS `total_harga`,
        `j`.`mata_uang` AS `mata_uang`,
        `j`.`id_customer` AS `id_customer`,
        `p`.`nama` AS `nama`,
        `p`.`cabang_sales` AS `cabang_sales`,
        `p`.`group` AS `group`
    FROM
        ((`vix_kimiafarma`.`penjualan` `j`
        LEFT JOIN `vix_kimiafarma`.`barang` `b` ON ((`b`.`kode_barang` = `j`.`id_barang`)))
        LEFT JOIN `vix_kimiafarma`.`pelanggan` `p` ON ((`p`.`id_customer` = `j`.`id_customer`)))