// Load library dari package.json pada dependency
const express = require("express");
const mysql = require("mysql");
const BodyParser  = require("body-parser");

// Set port and url
const app = express();
const port = process.env.PORT || 8000 // Untuk deploy online

app.use(BodyParser.urlencoded({ extended: true
}));

// Buat koneksi ke database
// Lokal
// const db = mysql.createConnection({
//     host: "localhost",
//     database: "quiz",
//     user: "root",
//     password: "",
// });

// Production
const db = mysql.createConnection({
    host: "us-cdbr-east-05.cleardb.net",
    database: "heroku_b95e84f205ad773",
    user: "b30595ea601eb2",
    password: "e3d10270",
});

// Set template pada directory views
app.set("view engine", "ejs");
app.set("views", "views");

// Pengaturan laman api ada disini
db.connect((err) => {
    if (err) throw err // Pesan error
    console.log("Database connected!") // Pesan sukses konek

    app.get("/", (req, res) => {
        // const sql = "SELECT * FROM m_penduduk"
        const sql_dinamis = "SELECT a.NIK, a.Nama, b.Nama_Kecamatan, c.Nama_Kabupaten, d.Nama_Provinsi FROM m_penduduk a INNER JOIN l_kecamatan b ON a.Kd_Kecamatan = b.Kd_Kecamatan INNER JOIN l_kabupaten c ON a.Kd_Kabupaten = c.Kd_Kabupaten INNER JOIN l_provinsi d ON a.Kd_Provinsi = d.Kd_Provinsi"
        db.query(sql_dinamis, (err, result) => { 
            const m_penduduk = JSON.parse(JSON.stringify(result)) 
            res.render("index", { m_penduduk: m_penduduk, title: "CRUD NodeJS Mysql", table: "Tampil Data Database" })
        })
        // console.log("Hasil yang keluar -> ", penduduk) // Test di command
    });

});

// Test buka di browser
// app.get("/", (req, res) => {
//     res.send("Halaman berhasil di buka")
// });

// Setting server
app.listen(port, () => console.log(
    `Listening on port ${port}`)
    )