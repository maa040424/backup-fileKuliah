CREATE TABLE barang_masuk (
    id_barang_masuk INT         AUTO_INCREMENT,
    kode_barang     VARCHAR(25),
    nama_barang     VARCHAR(50),
    jenis_barang    VARCHAR(25),
    jumlah          VARCHAR(11),
    tanggal_masuk   DATE       ,
    CONSTRAINT id_barang_masuk_fk PRIMARY KEY (id_barang_masuk)
);

CREATE TABLE stok (
    kode_barang     VARCHAR(25),
    nama_barang     VARCHAR(50),
    jenis_barang    VARCHAR(25),
    stok            VARCHAR(11),
    CONSTRAINT kode_barang PRIMARY KEY (kode_barang)
);

ALTER TABLE stok ADD CONSTRAINT kode_barang_uk UNIQUE KEY(kode_barang);

CREATE TABLE barang_keluar (
    id_barang_keluar    INT         AUTO_INCREMENT,
    kode_barang         VARCHAR(25),
    nama_barang         VARCHAR(50),
    jenis_barang        VARCHAR(25),
    jumlah              VARCHAR(11),
    id_keluar           DATE       ,
    CONSTRAINT id_barang_keluar_fk PRIMARY KEY (id_barang_keluar)    
);

ALTER TABLE stok ADD CONSTRAINT nama_barang_uk UNIQUE KEY(nama_barang);

CREATE PROCEDURE testing()
BEGIN
    INSERT INTO barang_masuk(nama_barang) VALUES ("testing");
END;

SELECT * 
FROM INFORMATION_SCHEMA.ROUTINES 
WHERE ROUTINE_TYPE = 'PROCEDURE' 
  AND ROUTINE_SCHEMA = 'db_toko';

SELECT ROUTINE_NAME 
FROM INFORMATION_SCHEMA.ROUTINES 
WHERE ROUTINE_TYPE = 'PROCEDURE' 
  AND ROUTINE_SCHEMA = 'db_toko';

DELIMITER // 
CREATE TRIGGER tambah_stok 
AFTER INSERT ON barang_masuk FOR EACH ROW 
BEGIN
    DECLARE stok_saat_ini INT;
    DECLARE stok_tambahan INT;
    DECLARE total_stok INT;
    SET stok_saat_ini = CAST((SELECT stok FROM stok WHERE kode_barang = NEW.kode_barang) AS INT);
    SET stok_tambahan = CAST(NEW.jumlah AS INT);
    SET total_stok = stok_saat_ini + stok_tambahan;
    IF EXISTS(SELECT s.kode_barang FROM stok AS s WHERE s.kode_barang = NEW.kode_barang) THEN
        UPDATE stok SET stok = CAST(total_stok AS VARCHAR(11)) WHERE kode_barang = NEW.kode_barang;     
    ELSE 
        INSERT INTO stok VALUES (NEW.kode_barang , NEW.nama_barang, NEW.jenis_barang, NEW.jumlah);
    END IF;
END //
DELIMITER ;

SELECT * FROM barang_masuk AS bm LEFT JOIN stok AS s ON (bm.kode_barang = s.kode_barang);

DELIMITER //
CREATE PROCEDURE test()
BEGIN
    IF 1 > 2 THEN SELECT "BENAR";
    ELSE SELECT "SALAH";
    END IF;
END //
DELIMITER;


DELIMITER //
CREATE TRIGGER tambah_stok
AFTER INSERT ON barang_masuk
FOR EACH ROW
BEGIN
    DECLARE new_stok INT;
    SET new_stok = (SELECT stok FROM stok WHERE kode_barang = NEW.kode_barang);
    IF new_stok IS NULL THEN
        INSERT INTO stok (kode_barang, nama_barang, jenis_barang, stok)
        VALUES (NEW.kode_barang, NEW.nama_barang, NEW.jenis_barang, NEW.jumlah);
    ELSE
        UPDATE stok
        SET stok = stok + CAST(NEW.jumlah AS SIGNED) WHERE kode_barang = NEW.kode_barang;
    END IF;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER kurangi_stok
AFTER INSERT ON barang_keluar
FOR EACH ROW
BEGIN
    DECLARE new_stok INT; 
    DECLARE stok_akhir INT;
    SET new_stok = (SELECT stok FROM stok WHERE kode_barang = NEW.kode_barang);
    IF new_stok IS NULL THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Data barang tidak ditemukan';
    ELSE
        SET stok_akhir = new_stok - CAST(NEW.jumlah AS SIGNED);
        IF stok_akhir < 0 THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Stok barang tidak boleh negatif';
        END IF;
        UPDATE stok SET stok = stok_akhir WHERE kode_barang = NEW.kode_barang;
    END IF;
END //
DELIMITER ;
