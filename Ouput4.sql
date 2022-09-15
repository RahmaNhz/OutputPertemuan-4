CREATE TABLE mahasiswa(
id_mhs INT,
id_fakultas INT,
nrp VARCHAR(15),
nama_mhs VARCHAR(25),
alamat VARCHAR(30),
PRIMARY KEY(id_mhs)
);

CREATE TABLE fakultas(
id_fakultas INT,
nama_fakultas VARCHAR(25),
ket VARCHAR(12),
PRIMARY KEY(id_fakultas)
)

INSERT INTO mahasiswa(id_mhs,id_fakultas,nrp,nama_mhs,alamat)
VALUES (1,7,"210411100171","Andi","Surabaya"),
(2,6,"210411100172","Dani","Gresik"),
(3,5,"210411100173","Andi","Sidoarjo"),
(4,9,"210411100174","Andi","malang"),
(5,3,"210411100175","Ratna","solo"),
(6,2,"210411100176","sari","Surabaya"),
(7,10,"210411100177","fauzan","jogja");

INSERT INTO fakultas(id_fakultas,nama_fakultas,ket)
VALUES (1,"Fakultas Hukum","aktif"),
(2,"Fakultas Pertanian","aktif"),
(3,"Fakultas Ekonomi","aktif"),
(4,"Fakultas Teknik","aktif"),
(5,"FISIB","aktif"),
(6,"FIP","aktif"),
(7,"FKls","aktif")

SELECT * FROM mahasiswa
INNER JOIN fakultas
ON mahasiswa.id_fakultas = fakultas.id_fakultas

UPDATE mahasiswa
SET nama_mhs='Aliudin', alamat='Nganjuk'
WHERE id_mhs=3

DELETE FROM mahasiswa
WHERE id_mhs=7
