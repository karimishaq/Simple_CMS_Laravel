-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 04, 2018 at 04:12 PM
-- Server version: 5.7.24-0ubuntu0.18.04.1
-- PHP Version: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larane`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `Judul` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Penulis` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Isi` longtext COLLATE utf8_unicode_ci NOT NULL,
  `Kategori` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `Judul`, `Penulis`, `Isi`, `Kategori`, `updated_at`, `created_at`) VALUES
(13, 'INTP', 'Geri', '\r\n	INTP adalah salah satu tipe kepribadian dalam MBTI.', 'MBTI', '2018-12-03 17:00:00', '2018-12-03 17:00:00'),
(21, 'MBTI', 'Geri', 'Tipe MBTI dikembangkan oleh Katherine Cook Briggs dan putrinya,\r\nberdasarkan teori dari Carl G. Jung.\r\n<p>MBTI adalah type-based personality test atau tes kepribadian yg\r\nhasilnya berupa tipe. Pada tipe MBTI, ada 4 dimensi kepribadian yg\r\nmemiliki 2 fungsi berlawanan dan menghasilkan 16 tipe kepribadian.\r\nTiap tipe kepribadian ditentukan pada kecenderungan untuk tiap\r\ndimensi.</p>\r\n<p>====</p>\r\n<p><b>Dimensi pemusatan perhatian =&gt; I (introvert) vs E\r\n(Extrovert) </b>\r\n</p>\r\n<p>Introvert : Lebih fokus dan tertarik pada dunia internalnya\r\nterutama pemikiran dan perasaannya dibandingkan dengan objek\r\neksternal.</p>\r\n<p>Extrovert : Lebih fokus dan tertarik pada objek eksternal dan\r\ninteraksi sosial dibandingkan dengan dunia internalnya.</p>\r\n\r\n<p><b>Dimensi cara memahami informasi dari luar =&gt; S (sensing) vs\r\nF (feeling).</b></p>\r\n<p>S – Sensing: cenderung lebih menyukai hal konkret daripada\r\nabstrak. Mereka memusatkan perhatian mereka pada detail objek yg\r\nterlihat, dan realitas yg sedang dihadapi.</p>\r\n<p>N – Intuition: cenderung lebih abstrak. Mereka fokus pada\r\ngambaran besar, kemungkinan, pola, konsep, dan ide.</p>\r\n\r\n<p><b>Dimensi cara menarik kesimpulan =&gt; F (Feeling) vs T\r\n(thinking)</b></p>\r\n<p>F – Feeling: people-oriented; mereka cenderung sering lebih\r\nmengutamakan implikasi sosial, idealisme dan empati daripada logika\r\ndan penalaran.</p>\r\n<p>T – Thinking: task-oriented; cenderung membuat keputusan yang\r\nlebih berdasarkan pada logika, kebenaran dan penalaran daripada\r\npertimbangan sosial.</p>\r\n\r\n<p><b>Dimensi pola hidup =&gt; Judging (J)  dan perceiving (P)</b></p>\r\n<p>J – Judgment: cenderung merencanakan kegiatan mereka secepatnya\r\natau minimal membuat jadwal di awal dan lebih fokus pada menentukan\r\nkesimpulan dibandingkan dg mempertahankan kemungkinan.</p>\r\n<p>P – Perception: Lebih spontan, fleksibel, santai, dan open\r\nminded. Cenderung \"semaksimal mungkin\" menahan pendapat,\r\npilihan dan kesimpulan dari suatu kemungkinan yg masih terbuka\r\nkemungkinannya untuk dipertimbangkan lagi saat memungkinkan.</p>\r\n<p>=====</p>\r\n<p>Dari dimensi-dimensi tersebut akan terbentuk 16 tipe kepribadian,\r\nyaitu :</p>\r\n<p>1.INTP</p>\r\n<p>2.INTJ</p>\r\n<p>3.ISTP</p>\r\n<p>4.ISTJ</p>\r\n<p>5.INFP</p>\r\n<p>6.INFJ</p>\r\n<p>7.ISFP</p>\r\n<p>8.ISFJ</p>\r\n<p>9.ENFP</p>\r\n<p>10.ENFJ</p>\r\n<p>11.ENTP</p>\r\n<p>12.ENTJ</p>\r\n<p>13.ESTP</p>\r\n<p>14.ESFP</p>\r\n<p>15.ESTJ</p>\r\n<p>16.ESFJ</p>\r\n\r\n<p>Di situs www.16personalities.com ada satu dimensi tambahan yg\r\nterkait dg konsistensi dan kepercayaan diri terhadap kemampuan\r\npersonal dan pengambilan keputusan. Dimensi tersebut terdiri dari\r\n-T(turbulent) dan -A(assertive).</p>\r\n\r\n<p>Ada dua tipe hasil tes kepribadian, yaitu type based dan trait\r\nbased. Type-based personalities lebih mudah dipahami daripada trait\r\nbased. Tapi, masalah timbul saat perbedaan hasil tes tiap dimensi\r\nkepribadian terlalu tipis. Ada juga yg bilang kekurangan hasil tes\r\ndisebabkan karena kecerobohan dan ketidakpahaman pelaku tes, walaupun\r\nkenyataannya itu berlaku pada semua tes tertulis. Tapi, jika mau\r\nmengamati, hal itu sebenarnya bisa diatasi dg memahami perbedaan\r\nutama dari tiap tipe kepribadian sebagai pembanding saat ada lebih\r\ndari satu hasil tes.</p>\r\n\r\n<p><b>Btw, di bawah ini adalah ciri-ciri introvert :</b></p>\r\n<p>1.Lebih suka ngobrol berdua atau dg orang-orang dan tema yg cocok.</p>\r\n<p>2.Cenderung selektif dalam berinteraksi dan berkomunikasi.</p>\r\n<p>3.Lebih cenderung berorientasi secara mendalam pada dunia internal\r\nseperti ide, pemikiran, pengamatan, perasaan, dll.</p>\r\n<p>4.Cenderung pendiam (saat ramai atau di tempat yg asing) dan\r\nmenyendiri bukan karena rasa takut, tekanan atau kecemasan yg\r\nberlebihan.</p>\r\n<p>5.Fungsi kognitif utamanya adalah si, ni, fi atau ti.</p>\r\n<p>6.Temperamennya dominan atau sekundernya adalah melankolis atau\r\nplegmatis.</p>\r\n<p>7.Relatif lebih mudah jenuh dan tidak nyaman saat berinteraksi dan\r\nberbasa-basi dg terlalu banyak orang. Tapi, tidak semua introvert\r\nsama batas kemampuannya untuk bertahanan di tengah keramaian.</p>\r\n<p>8.Kurang tertarik untuk terlalu banyak terlibat aktivitas sosial\r\nselain dengan orang yg belum benar-benar akrab. Tapi, mereka masih\r\nbisa bersosialisasi di lingkup tertentu.</p>\r\n<p>9.Lebih mengutamakan pemikiran atau penilaian subjektif dari dunia\r\ninternalnya.</p>\r\n<p>Jika syarat 1 s.d. 6 tidak terpenuhi, kemungkinan anda extrovert.\r\nSyarat nomor 7 dan 8 relatif karena ada yg disebut orang dg ambivert,\r\ndan dalam tipe MBTI tidak ada ambivert. :p</p>\r\n<p>Jika sulit menilai dari dimensi kepribadian, maka pilihannya\r\nadalah dg melihat fungsi kognitifnya.</p>\r\n<div><br></div><div><br></div>\r\n<p><b>Fungsi Kognitif</b></p>\r\n<p>Berdasarkan teori dari Carl G. Jung; semua manusia punya feeling,\r\nthinking, intuition, dan sensing; dg kecenderungan yg berbeda-beda.\r\nBerdasarkan teori tersebut, fungsi kognitif dibagi lagi jadi 8\r\nfungsi.</p>\r\n<p><b>Fungsi ektrovert (E) =&gt; te, fe, se, ne</b></p>\r\n<p><b>Fungsi introvert (I) =&gt; ti, fi, si, ni</b></p>\r\n<p>Semua fungsi kognitif itu ada pada semua manusia walaupun dengan\r\nurutan yg relatif berbeda-beda. Urutan fungsi kognitif menentukan\r\nkecenderungan cara dan proses pengambilan keputusan oleh seseorang.\r\nFungsi kognitif dominan adalah fungsi yang paling sering dipakai\r\ndalam pengambilan keputusan baik secara terencana maupun spontan.\r\nTiap orang punya satu fungsi yang paling dominan dan satu fungsi\r\nauxiliary yg mendukung fungsi utama.</p>\r\n<p>Setiap orang yg normal, fungsi dominan dan fungsi pendukungnya\r\nadalah fungsi yg berlawanan,misalnya fungsi utama adalah E, maka\r\nfungsi kedua seharusnya adalah I. Fungsi dominan akan berperan secara\r\nspontan saat kita mengambil keputusan terkait dg diri sendiri.\r\nSedangkan fungsi kedua akan membantu fungsi dominan saat kita\r\nmembutuhkannya.</p>\r\n<p>Fungsi dominan dan auxiliary biasanya jarang berubah kecuali\r\nkarena adanya tekanan. Walaupun begitu, di lingkungan tertentu,\r\nfungsi auxiliary bisa menjadi lebih dominan. Contohnya, introvert\r\nfungsi auxiliary-nya akan dominan saat dia bersama dg orang yg dia\r\nanggap nyaman. Seorang ekstrovert juga mungkin saja akan dominan tipe\r\nkeduanya saat dituntut untuk bekerja sendiri.</p>\r\n<p>Di luar 2 fungsi utama, ada fungsi tersier yg mungkin akan jarang\r\ndigunakan di luar kondisi nyaman. Fungsi inferior biasanya akan\r\ndigunakan di situasi yang terbatas atau saat tiga fungsi sebelumnya\r\ntidak bisa menjadi solusi untuk mengatasi masalah yg sedang dihadapi.\r\nFungsi yg tersisa disebut shadow function / shadow process karena\r\nberlawanan dg 4 fungsi utama dan memang lebih sering digunakan dalam\r\nkondisi di saat 4 fungsi sebelumnya gagal untuk memberikan solusi\r\natau saat tertekan dan kondisi tertentu.</p>\r\n<p>Fungsi kognitif ini dibagi 2 menjadi perceiving dan judging. Lebih\r\ndetailnya, lihat deskripsi tiap fungsi kognitif di bawah ini.</p>\r\n<p><b>#Perceiving (P) functions :</b></p>\r\n<ol><li><p style=\"margin-bottom: 0in\">Si (Introverted Sensing) : Si\r\n	terkait dengan rasa aman, kenyamanan, dan stabilitas berdasarkan\r\n	masa lalu. Si melihat masa lalu sebagai pembanding dari apa yg\r\n	dilihat dan dialami sekarang terutama dg tujuan untuk mempelajari\r\n	perbedaan dan kesamaannya. Berbeda dengan Se, Orang dengan Si\r\n	dominan akan sulit mengekspresikan diri saat harus merespon impuls\r\n	dan sensasi yang diterima panca indera dari luar diri mereka.\r\n	Walaupun bisa cepat memulai, Orang dengan Si dominan cenderung\r\n	berhati-hati dan prosedural dalam melakukan setiap tindakannya.\r\n	Sekalipun terkait dengan masa lalu, Si tidak terkait dengan kuatnya\r\n	daya ingat melainkan kemampuan mengorganisasikan sesuatu berdasarkan\r\n	pengalaman dan prosedur yang sudah dipelajari. Walaupun Si dominan\r\n	bisa memaksimalkan ingatannya sehingga bisa dengan mudah diakses\r\n	saat dibutuhkan, tiap orang bisa saja pikun dan lupa termasuk orang\r\n	dengan Si dominan. Selain itu, orang dengan fungsi dominan lain bisa\r\n	saja punya ingatan visual yang lebih baik daripada Si dominan.</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">Se (Extraverted Sensing) : Se\r\n	terkait dengan impuls dan sensasi yang diterima panca indera. Se\r\n	membuat orang tertarik untuk mencoba dan menikmati semua hal menarik\r\n	yg sedang dilihat dan berorientasi pada apa yg sedang dialami. Orang\r\n	dg fungsi ini sebagai fungsi dominan kadang mudah terdistraksi atau\r\n	terpengaruh suasana yg disebabkan oleh keadaan di sekitarnya. Fungsi\r\n	ini membuat orang cenderung spontan, realistis dan hidup di masa\r\n	sekarang.</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">Ne (Extraverted Intuitive) :\r\n	mengamati semua manusia, kejadian dan semua objek yg diterima panca\r\n	indera sebagai kumpulan pola, kemungkinan dan sumber ide; kemudian\r\n	menafsirkan dan memahami hubungan dari tiap objek dan\r\n	kemungkinan-kemungkinan yg mungkin ada dari satu objek maupun\r\n	hubungannya dg objek lain dan ide yg sudah ada. Ne bukan menggali\r\n	ide dg praktek tapi dg berpikir berdasarkan pengamatan dan informasi\r\n	yg diterima \"panca indera\". Orang dengan fungsi ini sulit\r\n	mengambil kesimpulan dan kadang membuatnya cenderung terbawa suasana\r\n	untuk memahami semua yang ada di depannya sehingga orang dengan Ne\r\n	di posisi dominan cenderung sulit fokus dg satu ide. Ne\r\n	terus-menerus terhubung kepada banyak hal di dunia nyata saat\r\n	digunakan sehingga mereka sulit fokus dan cenderung menghubungkan\r\n	satu hal dengan banyak hal dengan kemungkinan yang tidak difokuskan\r\n	pada satu event tertentu.</p>\r\n	</li><li><p>Ni (Introverted Intuitive) : Anggap saja ini versi yg lebih\r\n	fokus walaupun ini juga lebih rumit daripada Ne. Ni terkait dengan\r\n	insight, vision, prediksi, dan dampak suatu tindakan atau event\r\n	setelah data terkumpul di otak dan mengolah kemungkinannya \"tanpa\r\n	perlu ada data eksternal\" yg tampak. Ni cenderung bisa memahami\r\n	hubungan dari tiap objek, mengeliminasi hal-hal yg dinilai tidak\r\n	logis, dan menyimpulkannya secara subjektif dalam dunia internal\r\n	mereka sebelum menggali ide baru. Ni bisa menghasilkan ide baru dari\r\n	hubungan ide-ide abstrak yg sudah ada. Ni seperti jaring atau\r\n	gugusan yang setiap bagiannya terhubung satu sama lain. Ni bisa\r\n	membuat seseorang fokus dan memahami hubungan tiap hal pada satu\r\n	event pada rentang waktu tertentu sehingga orang dengan Ni dominan\r\n	bisa membuat prediksi atau kesimpulan-kesimpulan berdasarkan\r\n	kemungkinan yang bisa mereka perkirakan. Ni dominan bisa membuat\r\n	seseorang tenggelam dalam imajinasi atau khyalannya sendiri sehingga\r\n	mereka bisa terlihat seperti melamun saat mereka tidak berbicara dan\r\n	tidak melakukan suatu kegiatan.</p>\r\n</li></ol>\r\n<p><b>#Jugding (J) functions :</b></p>\r\n<ol><li><p style=\"margin-bottom: 0in\">Te : membagi tugas / peran,\r\n	mengatur, dan melihat konsekuensi saat dilakukan di dunia nyata.\r\n	Fungsi ini berorientasi pada penalaran, logika, rencana, tujuan,\r\n	efisiensi, efektifitas suatu tindakan dan penerapan di dunia nyata.\r\n	Di posisi dominan dan auxiliary, fungsi kognitif ini juga membuat\r\n	seseorang cenderung frontal dan to the point saat menyampaikan data\r\n	dan fakta. Orang dengan Te diposisi dominan cenderung terlihat bossy\r\n	dan berpotensi menjadi pemimpin, walaupun mereka juga bisa terlihat\r\n	sangat tidak sensitif.</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">Ti : Memahami definisi untuk\r\n	meningkatkan presisi berdasarkan apa yg sudah ada dalam pikiran dan\r\n	ingatan, dan mencari bagian yg tidak konsisten kemudian menganalisa,\r\n	membandingkan, memperbaiki dan mengembangkan suatu teori, cara\r\n	kerja, model ataupun konsep secara internal, subjektif dan mendalam.\r\n	Fungsi ini lebih banyak menganalisa, memperbaiki dan mengembangkan\r\n	semua ide, model dan konsep secara detail dan sangat mendalam;\r\n	sehingga orang yg menggunakannya cenderung butuh banyak waktu\r\n	sendiri. Dibandingkan dengan data dan fakta, orang dengan Ti dominan\r\n	lebih tertarik dengan ide saat mereka melakukan sesuatu untuk diri\r\n	mereka sendiri. Orang dengan Ti dominan biasanya juga lebih lambat\r\n	dalam menetapkan diri pada satu keputusan. <br>Secara emosional, Ti\r\n	dominan bisa membuat seseorang punya emotional treshold yang tinggi\r\n	sehingga orang dengan Ti dominan bisa berpikir subjektif tanpa\r\n	dipengaruhi emosi maupun pendapat orang lain saat berpikir secara\r\n	internal dengan Ti-nya.</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">Fe : Fe terkait dengan kepedulian,\r\n	empati, pengakuan, perhatian, ekspresi, mirroring, dan hubungan. Fe\r\n	dominan membuat seseorang sensitif terhadap keadaan di sekitarnya\r\n	tapi bukan berarti mereka emosional, sebaliknya mereka mampu\r\n	mengendalikan diri, ekspresif dan cenderung mudah berempati dg\r\n	keadaan orang-orang di sekitarnya walaupun kadang malah kurang\r\n	perhatian dg diri sendiri. Walaupun peduli pada orang lain, Fe juga\r\n	membuat seseorang menginginkan timbal balik dari setiap tindakannya.\r\n	Mereka juga sering merasa butuh perhatian dan pengakuan. Fungsi ini\r\n	membuat keputusan berdasarkan pendapat orang lain dan nilai-nilai yg\r\n	umumnya bisa diterima oleh orang-orang di sekelilingnya. Fungsi ini\r\n	membuat orang cenderung mudah untuk bersosialisasi dan menyampaikan\r\n	perasaannya. Sisi negatif Fe yang berlebihan adalah sikap\r\n	berpura-pura dan manipulatif yang bisa berlebihan hanya demi menjaga\r\n	hubungan dan mendapatkan pengakuan.</p>\r\n	</li><li><p>Fi : Walaupun Fi dominan biasanya cenderung punya kesadaran\r\n	emosi yang dalam, termasuk HSP(Hypersensitive person), dan mungkin\r\n	juga terlihat pemalu saat kecil, inti utama Fi bukanlah emosi tapi\r\n	nilai personal dan nilai moral. Fi membantu orang yang punya fungsi\r\n	kognitif ini dalam menentukan standar moral dan mempertahankannya.\r\n	Fi membuat seseorang memutuskan apakah sesuatu pantas atau tidak\r\n	untuk dipertahankan berdasarkan standar pribadi. Orang dg fungsi ini\r\n	akan membandingkan semua perasaannya dg nilai personal, idealisme\r\n	dan membuat penilaian terhadap semua hal termasuk benda-benda di\r\n	sekitarnya, dirinya sendiri maupun orang lain. Berbeda dg Fe yang\r\n	cenderung berusaha terus menjaga hubungan dengan orang lain, orang\r\n	yg fi-nya dominan malah cenderung tertutup, sering menghindari\r\n	konflik dan tidak terlalu suka mengekspresikan perasannya kecuali\r\n	pada orang yg sudah dikenal dan dipercaya. Hal- hal tersebut membuat\r\n	mereka cenderung tidak mudah terpengaruh oleh penilaian orang lain,\r\n	walaupun mereka membuat keputusan dalam keadaan emosi. \r\n	</p>\r\n</li></ol>\r\n<p>Walaupun biasanya ada kecenderungan urutan pola fungsi kognitif\r\nadalah PJJP, JPPJ, IEIE atau EIEI; tapi tidak semua orang dg tipe\r\nMBTI yg sama urutan fungsi kognitifnya akan sama setelah melakukan\r\ntes. Hal itu mungkin terjadi karena tiap orang masih mungkin\r\nmenggunakan fungsi kognitif yg merupakan shadow functions-nya\r\nsehingga kadang ada yang bingung dg tipe MBTI karena sudah terbiasa\r\ndan \"dikondisikan\" untuk menggunakan 1 atau 2 shadow\r\nfunctions-nya.</p>\r\n<p>Ada yang mengaitkan fungsi kognitif ini dg tipe kecerdasan. Tapi,\r\nkenyataannya, fungsi kognitif tidak selalu sejalan dg kecerdasan\r\n\"yang terlihat\". Orang dg tipe ni atau ne yg lebih suka dg\r\nide abstrak belum tentu sama bagus dalam menggunakan kemampuan\r\nterkait dengan kecerdasan matematis dan linguistiknya. Begitu juga dg\r\npengguna Si dan Se yg suka dg hal yg konkrit, mereka belum tentu sama\r\nbagusnya dalam menggunakan kemampuan yang terkait dengan kecerdasan\r\nspasial atau kinestetiknya sekalipun Si atau Se adalah fungsi\r\ndominannya. Selain itu, ada kemungkinan satu orang dengan tipe yang\r\nsama bisa punya tipe kecerdasan yang berbeda dengan kecerdasan yang\r\njadi stereotipe tipe MBTI-nya. Intinya, tipe MBTI maupun fungsi\r\nkognitif lebih terkait dg kecenderungan pola pikir dan cara mengambil\r\nkeputusan dibandingkan dg tingkat kecerdasan. Selain itu, potensi\r\nkecerdasan harus dilatih dan diasah dengan praktek atau belajar.</p>\r\n<p>Berikut ini adalah fungsi kognitif tiap tipe MBTI.</p>\r\n<ol><li><p style=\"margin-bottom: 0in\">ESTJ =&gt; Te Si</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ESTP =&gt; Se Ti</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ESFJ =&gt; Fe Si</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ESFP =&gt; Se Fi</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ENFP =&gt; Ne Fi</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ENFJ =&gt; Fe Ni</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ENTP =&gt; Ne Ti</p>\r\n	</li><li><p>ENTJ =&gt; Te Ni</p>\r\n</li></ol>\r\n<p>Kalau mau memperhatikan urutan fungsi kognitif tiap tipe, kita\r\nakan tahu tiap tipe fungsi kognitif dari dua huruf yang ada di tengah\r\nnama tipe-nya. Selain itu, huruf kedua dari nama fungsi kognitif\r\ndominan sesuai dengan label i(introvert) dan e(Extrovert) yang ada di\r\nnama masing-masing tipe. Untuk extrovert, fungsi kognitif dominan\r\njenisnya akan sesuai dengan huruf keempat dari nama tipe MBTI yaitu\r\nP(Perceiving) atau J(Judging). Untuk introvert, yang sesuai dengan P\r\ndan J adalah fungsi auxiliarynya. Pola fungsi kognitif introvert\r\ndidapat dengan membalik fungsi kognitif tipe extrovert (yang tiga\r\nhuruf terakhirnya sama) dari 12 menjadi 21. Dari sini, akan terlihat\r\nbahwa penentuan P dan J dari tipe introvert ditentukan dari jenis\r\nfungsi kognitif auxiliary-nya.</p>\r\n<ol><li><p style=\"margin-bottom: 0in\">ISTJ =&gt; Si Te</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ISTP =&gt; Ti Se</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ISFJ =&gt; Si Fe</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ISFP =&gt; Fi Se</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">INFP =&gt; fi Ne</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">INFJ =&gt; Ni Fe</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">INTP =&gt; Ti Ne</p>\r\n	</li><li><p>INTJ =&gt; Ni Te</p>\r\n</li></ol>\r\n<p>Selain fungsi dominan dan fungsi auxiliary yang menjadi ciri tiap\r\ntipe, dalam fungsi utama tiap tipe juga ada fungsi tersier dan fungsi\r\ninferior. Setiap orang punya N(Intution), T(Thinking), F(Feeling),\r\ndan S(Sensing) dalam fungsi utamanya. Perbedaannya ada pada\r\nsusunannya. Untuk extrovert, susunannya adalah eiei, sedangkan untuk\r\nintrovert susunannya adalah ieie. Perhatikan susunan tipe-tipe\r\nberikut.</p>\r\n<p>Berikut ini adalah susunan fungsi kognitif tiap tipe MBTI yang\r\ntermasuk extrovert.</p>\r\n<ol><li><p style=\"margin-bottom: 0in\">ESTJ =&gt; Te Si *e *i</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ESTP =&gt; Se Ti *e *i</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ESFJ =&gt; Fe Si *e *i</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ESFP =&gt; Se Fi *e *i</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ENFP =&gt; Ne Fi *e *i</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ENFJ =&gt; Fe Ni *e *i</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ENTP =&gt; Ne Ti *e *i</p>\r\n	</li><li><p>ENTJ =&gt; Te Ni *e *i</p>\r\n</li></ol>\r\n<p>Hmm..., saya sengaja mengosongkan huruf awal untuk fungsi tersier\r\ndan inferior karena saya akan membahas cara menentukannya jika fungsi\r\ndominan dan auxiliary sudah diketahui.</p>\r\n<p>Dalam MBTI, susunan fungsi kognitif dari fungsi utama dibagi ke\r\ndalam poros luar dan poros dalam. Poros luar adalah fungsi kognitif\r\ndominan dan inferior, sedangkan poros dalam adalah fungsi kognitif\r\nauxiliary dan tersier. Fungsi kognitif di poros yang sama punya peran\r\natau kegunaan yang sama. Misalnya, jika fungsi dominannya termasuk\r\njudging, maka fungsi Inferiornya juga adalah judging dengan orientasi\r\nyang berkebalikan dan huruf awal yang berbeda. Yang harus\r\ndiperhatikan adalah tiap tipe punya N, T, F dan S. Lebih jelasnya,\r\namati dan analisa urutan fungsi kognitif tiap tipe di bawah ini!</p>\r\n<ol><li><p style=\"margin-bottom: 0in\">ESTJ =&gt; Te Si *e Fi</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ESTP =&gt; Se Ti *e Ni</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ESFJ =&gt; Fe Si *e Ti</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ESFP =&gt; Se Fi *e Ni</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ENFP =&gt; Ne Fi *e Si</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ENFJ =&gt; Fe Ni *e Ti</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ENTP =&gt; Ne Ti *e Si</p>\r\n	</li><li><p>ENTJ =&gt; Te Ni *e Fi</p>\r\n</li></ol>\r\n<p>Dari daftar di atas sudah jelas bahwa jika huruf awal fungsi\r\ndominannya adalah F maka fungsi kognitif auxiliary nya adalah T,\r\nbegitu juga sebaliknya. Hal ini juga berlaku pada tipe P(perceiving)\r\nyang huruf awal fungsi kognitif dominannya N(Intuitive) atau\r\nS(sensing).</p>\r\n<p>Untuk mengisi fungsi kognitif tersier, kita bisa memasukan huruf\r\nyang belum ada di antara N, T, F dan S. atau bisa dengan menyesuaikan\r\nhuruf awal berdasarkan fungsi kognitif auxiliarynya. Yang perlu\r\ndiingat adalah, F lawannya adalah T; dan N lawannya adalah S.</p>\r\n<ol><li><p style=\"margin-bottom: 0in\">ESTJ =&gt; Te Si Ne Fi</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ESTP =&gt; Se Ti Fe Ni</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ESFJ =&gt; Fe Si Ne Ti</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ESFP =&gt; Se Fi Te Ni</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ENFP =&gt; Ne Fi Te Si</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ENFJ =&gt; Fe Ni Se Ti</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ENTP =&gt; Ne Ti Fe Si</p>\r\n	</li><li><p>ENTJ =&gt; Te Ni Se Fi</p>\r\n</li></ol>\r\n<p>Untuk mengubah urutan fungsi kognitif dari introvert dan extrovert\r\nyang nama tipenya sama tiga huruf lainnya, cukup dibalik polanya dari\r\n1234 menjadi 2143 sehingga susunannya terbalik dari eiei menjadi\r\nieie.</p>\r\n<ol><li><p style=\"margin-bottom: 0in\">ISTJ =&gt; Si Te Fi Ne</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ISTP =&gt; Ti Se Ni Fe</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ISFJ =&gt; Si Fe Ti Ne</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">ISFP =&gt; Fi Se Ni Te</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">INFP =&gt; Fi Ne Si Te</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">INFJ =&gt; Ni Fe Ti Se</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">INTP =&gt; Ti Ne Si Fe</p>\r\n	</li><li><p>INTJ =&gt; Ni Te Fi Se</p>\r\n</li></ol>\r\n<p>Pada tahun 1993 John Beebe memperkenalkan konsep 8 functions dan\r\nmembagi fungsi kognitif menjadi fungsi utama dan fungsi bayangan /\r\nshadow functions. Shadow function adalah fungsi yang kurang disukai\r\npenggunannya dan lebih sering direpress. Shadow functions lebih\r\nbanyak berperan sebagai fungsi kognitif yang meragukan dan\r\nmempertanyakan peran fungsi kognitif utama. Peran shadow function\r\nmungkin akan cukup sering terlihat saat peran fungsi utama sudah\r\ntidak bisa memberikan solusi. Shadow functions umumnya hanya berperan\r\ndalam waktu singkat dan cenderung berperan negatif jika dipaksakan.</p>\r\n<p>Selain fungsi kognitif kelima yang dia namai sendiri John Beebe\r\nmenamai posisi fungsi kognitif tiap tipe dengan archetype dari Carl\r\nG. Jung. Berikut ini adalah nama fungsi kognitif di tiap posisi.</p>\r\n<ol><li><p style=\"margin-bottom: 0in\">Hero</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">Parent /Father/Mother</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">Eternal Child / puer / puella</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">Anima/Animus</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">Opposing role</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">Witch / Senex / Critical parent</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">The trickster</p>\r\n	</li><li><p>Demon \r\n	</p>\r\n</li></ol>\r\n<p>Fungsi ke-1 sampai ke-4 adalah fungsi utama. Sedangkan fungsi\r\nkognitif ke-5 sampai dengan ke 8 adalah shadow functions. Shadow\r\nfunctions arahnya berlawanan dengan fungsi utama dan mirip dengan\r\nfungsi kognitif utama dari tipe yang namanya berbeda huruf awal dan\r\nakhirnya; misalnya ENTP(Ne Ti Fe Si) shadow functions-nya adalah\r\nfungsi kognitif utama dari INTJ(Ni Te Fi Se).</p>\r\n<p>Shadow functions umumnya bisa berperan negatif jika dipaksakan\r\npenggunannya tapi di sisi lain itu juga bisa menjadi katalis dari\r\nperkembangan fungsi utama. Shadow functions juga membantu seseorang\r\nsupaya mempunyai pengendalian yang lebih baik saat menggunakan fungsi\r\nkognitif utama. Fungsi ke-5 dan ke-6 cenderung berperan pasif agresif\r\ndan perannya bertentangan dua fungsi teratas karena tujuannya memang\r\nberperan untuk mempertanyakan peran fungsi dominan dan auxiliary.\r\nFungsi ke-8(demon) cenderung akan mempertanyakan peran fungsi\r\ninferior(yang berada pada posisi ke-4) dan baru berperan saat semua\r\nfungsi gagal memberikan solusi. Fungsi ke-7 perannya cenderung jarang\r\ndigunakan dan biasanya jadi fungsi kognitif yang paling sulit\r\ndikembangkan, saat dipaksakan fungsi ke-7(The trickster) umumnya\r\nlebih memperlihatkan sisi negatifnya, atau bahkan secara relatif bisa\r\nterlihat vulnerable atau mungkin destruktif.</p>\r\n<p><br><br>\r\n</p>\r\n<p><b>Temperamen</b></p>\r\n<p>Temperamen adalah kecenderungan yang menentukan cara berpikir,\r\nbertindak, memberi tanggapan dan merasa.</p>\r\n<p>Banyak skema klasifikasi temperamen yang sudah dikembangkan.\r\nBagaimanapun, diantara klasifikasi ini tidak ada yang sudah mencapai\r\n\"kesepakatan umum\" secara akademis.</p>\r\n<p>Ditinjau dari sejarahnya, pada abad kedua, Galen mendeskripsikan 4\r\ntemperamen (melancholic, phlegmatic, sanguine dan choleric)\r\nberdasarkan perbandingan \"the four humours\" (Blood, yellow\r\nbile, black bile, dan phlegm) atau cairan dalam tubuh yg sebelumnya\r\ndigunakan Hippocrates dalam pengobatan yg dikaitkan dg temperamen.\r\nAbaikan saja tentang 4 cairan tubuh yg dimaksud karena itu sudah\r\ntidak digunakan dalam kedokteran karena dianggap tidak relevan lagi.</p>\r\n<p>Walaupun 4 cairan tersebut sudah tidak diterima lagi dalam dunia\r\nmedis, tapi teori Galen masih digunakan sebagai panduan pemetaan\r\ntemperamen dalam psikologi.</p>\r\n<p>Berikut ini ciri dasar keempat temperamen tersebut.</p>\r\n<ol><li><p style=\"margin-bottom: 0in\">Melankolis : Introvert, lingkup\r\n	pergaulan sempit (karena cenderung selektif dan mudah merasa tidak\r\n	nyaman), serius, sangat sensitif, emosi tidak stabil, punya standar\r\n	tinggi, idealis dan mudah merasa kasihan (sehingga kadang sulit\r\n	menolak dan rela mengorbankan diri).</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">Sanguin : Ekstrovert, suka\r\n	terlibat di tengah keramaian (tapi tidak berarti tidak bisa\r\n	menyendiri), fleksibel, ramah, suka banyak bicara, mudah terbawa\r\n	suasana (terutama suasana gembira) saat berkomunikasi, dan bisa dg\r\n	mudah bergaul dg hampir semua orang.</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">Plegmatis : Introvert, ramah,\r\n	pasif, emosi sering tertahan, cinta damai, cenderung mudah mengalah\r\n	saat mengambil keputusan dan lebih suka menjauh dari masalah.</p>\r\n	</li><li><p>Koleris : Extrovert, tegas, independen, impulsif, cenderung\r\n	sulit mengalah, tidak takut terlibat dg konflik, kurang fleksibel\r\n	dan berorientasi pada hasil.</p>\r\n</li></ol>\r\n<p>Selain 4 temperamen tersebut, ada satu temperamen tambahan jika\r\nyang kita gunakan adalah pemetaan versi 5 temperamen. Temperamen baru\r\ntersebut disebut supine.</p>\r\n<p>Jika kamu supine kamu mungkin mempunyai banyak ketertarikan dan\r\nkepedulian, tapi sedikit kemampuan untuk menyatakan kebutuhanmu.\r\nSeorang supine berkata bahwa (untuk menjadi) supine \"rasakan\r\nseperti ada selotip di mulutnya\".</p>\r\n<p>Ketergantungan pada orang lain, tidak mau kehilangan posisi,\r\nkemauan yang lemah, dan cenderung merasa lemah; membuat mereka\r\nseolah-olah telahir dengan \"bakat / potensi\" untuk menjadi\r\nkorban. Seorang supine cenderung akan mencari orang yang bisa\r\ndimintai pendapat ketika mencoba untuk membuat keputusan. Supine\r\nmerasa tidak punya kemampuan yang cukup dan menganggap diri mereka\r\nsendiri tidak mampu membuat keputusan. Mereka mungkin meminta\r\nmasukkan dari beberapa orang dan menjadi cukup bingung ketika\r\nmendapati pendapat yang berbeda-beda.</p>\r\n<p>Supine cenderung menganggap banyak orang lebih superior\r\ndibandingkan dg diri mereka. Mereka adalah tipikal orang yang lambat\r\nmelawan. Dibandingkan dg menahan amarah dan rasa sakit karena\r\ntindakan orang lain, mereka cenderung merasa itulah perlakuan yang\r\npantas mereka terima. Mereka akan melayani dengan sepenuh hati orang\r\nyang mereka anggap lebih baik dibandingkan dg diri mereka sendiri.\r\nSekalipun mereka cenderung tidak memperlihatkan keinginan dan\r\nkebutuhan mereka, mereka berharap orang lain akan memahami atau\r\nmembaca isi pikiran mereka. Walaupun mereka sering tampak seperti\r\norang yg cenderung selalu bergantung pada orang lain, sebenarnya\r\nmerekalah yang memanipulasi orang lain untuk mempedulikan mereka, dan\r\nmereka tidak menyukai tanggung jawab terkait pembuatan keputusan yang\r\naktual.</p>\r\n<p>Setiap orang pada dasarnya punya campuran dari\r\ntemperamen-temperamen di atas. Tapi, berdasarkan buku personality\r\nplus dan teori lain, tiap orang bisa punya 1 atau 2 tipe yg paling\r\ndominan.</p>\r\n<p>Florence Littauer menggolongkan campuran kepribadian manusia\r\nmelalui penjabaran mendetail berdasarkan teori Hippocrates dan\r\nGalenus tentang temperamen. Menurut littauer, seseorang berpeluang\r\nmemiliki kepribadian campuran yg seimbang dari gabungan 2 temperamen,\r\nyaitu sebagai berikut :</p>\r\n<ol><li><p style=\"margin-bottom: 0in\">Campuran Alami : Sanguinis-Koleris\r\n	dan Melankolis-Plegmatis. \r\n	</p>\r\n	</li><li><p style=\"margin-bottom: 0in\">Campuran Pelengkap :\r\n	Koleris-Melankolis dan Sanguinis-Plegmatis. \r\n	</p>\r\n	</li><li><p>Campuran Berlawanan : Sanguinis-Melankolis dan\r\n	Koleris-Plegmatis.</p>\r\n</li></ol>\r\n<p>Campuran pelengkap dan campuran alami sangat mungkin terbentuk\r\nsebagai \"temperamen bawaan\" walaupun tidak menutup\r\nkemungkinan juga bahwa salah satunya baru terbentuk seiring\r\nbertambahnya usia dan pengalaman. Temperamen yg bertentangan sangat\r\nmungkin terbentuk karena terbentuknya topeng / mask pada orang yg\r\nterlalu dominan satu temperamennya setelah melewati proses hidup\r\ntertentu atau karena pola asuh ortu yg menuntutnya untuk membalikkan\r\nkepribadiannya. \r\n</p>\r\n<p align=\"RIGHT\">Topeng / mask juga bisa ditemukan pada orang yg merasa\r\nmemiliki 3 temperamen yg seimbang. Biasanya, temperamen ketiganya\r\nadalah topeng untuk yg terbentuk untuk melindungi diri dari suatu\r\npengalaman buruk dalam hidupnya atau karena tuntutan ortu yg\r\nmenekannya untuk berubah. \r\n</p>\r\n<p>Untuk yg punya 4 temperamen sekaligus yg seimbang hasilnya saat\r\ndites, kemungkinan dia plegmatis yg ragu dg setiap pilihannya, atau\r\nada 2 topeng yg terbentuk sebagai topeng karena faktor yg sudah\r\ndisebutkan.</p>\r\n<p>Dua karakter yg bertentangan biasanya tidak bisa muncul dalam satu\r\nwaktu kecuali ada gangguan kepribadian yg membuat seseorang\r\nberubah-ubah secara mendadak. Pemilik temperamen yang bertentangan\r\ntersebut punya kecenderungan berganti kepribadian di tiap keadaan yg\r\nberbeda.</p>\r\n<p>Sekarang saya akan membahas temperamen versi Linda Beren yang\r\ndidasarkan pada pemetaan temperamen dari David keirsey.\r\nTemperamen-temperamen tersebut bisa dikaitkan dg tipe MBTI. Ada 4\r\ntemperamen berdasarkan versi Linda Beren. 4 temperamen tersebut,\r\nyaitu :</p>\r\n<p>1.-NF- =&gt; The Catalyst / idealists =&gt; suka dg keaslian,\r\nidealisme, kesatuan dan aktualisasi diri. Mempercayai penilaian\r\nberdasarkan intuisi dan impresi sebelum kemudian menggunakan logika\r\ndan data sebagai pendukung penilaiannya.</p>\r\n<p>2.-NT- =&gt; The theorist / rationals =&gt; Mereka cenderung suka\r\ndg logika, rasionalitas, ide abstrak, pola dan hubungan. Cara belajar\r\nmereka adalah konseptual. Mereka ingin tahu prinsip dan cara kerja yg\r\nmendasari dan menghasilkan detail dan fakta; dibandingkan hanya dg\r\nmengingat detail tersebut. Mereka \"cenderung\" lebih suka\r\nberpikir dan membangun konsep terlebih dahulu dibandingkan\r\nterburu-buru mempraktekkan hal-hal yg bersifat praktis.</p>\r\n<p>3.-S-P =&gt; The improviser / artisant =&gt; Mereka menyukai\r\nkebebasan, pragmatis dan utilitarian dalam hal ujicoba secara\r\npraktek. Mereka melihat relevansi dari apa yg mereka pelajari\r\ndibandingkan dg apa yg sudah mereka lakukan. Mereka percaya pada\r\nimpuls untuk menentukan kapan mereka harus memulai suatu ujicoba atau\r\nsekedar memulai tindakan lain. Energi mereka difokuskan pada variasi,\r\nkreativitas, stimulasi dan tindakan yg berdayaguna. Mereka hidup\r\nuntuk menikmati hari ini, dan mereka berpikir untuk melakukan\r\npengembangan dan perbaikan yg berguna untuk masa depan.</p>\r\n<p>4.-S-J =&gt; The stabilizer / Guardians =&gt; menghargai rangkaian\r\nurutan, keteraturan, struktur, hirarki, stabilitas dan rasa aman.\r\nMereka cenderung menggunakan rencana, jadwal, fakta, realita, masa\r\nlalu, <u>dan</u> norma yg ada sebagai standar dalam menilai dan\r\nmelakukan sesuatu.</p>\r\n<p>Setiap orang punya satu temperamen yang paling dominan dan mungkin\r\nsaja ada temperamen sekunder dan tersier yang hanya beda tipis dg\r\ntemperamen dominannya.</p>\r\n<p style=\"margin-bottom: 0in\"><br>\r\n</p>\r\n', 'MBTI', '2018-12-03 17:00:00', '2018-12-03 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id` int(11) NOT NULL,
  `Nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id`, `Nama`, `isi`, `created_at`, `updated_at`) VALUES
(1, 'Geri', 'Komentarku', '2018-12-03 17:00:00', '2018-12-03 17:00:00'),
(2, 'Sani', 'Ini cuma test', '2018-12-04 07:42:55', '2018-12-04 07:42:55');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_12_04_062700_tabel_komentar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` int(11) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Nilai` varchar(5120) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `Nama`, `Nilai`, `updated_at`, `created_at`) VALUES
(1, 'Kategori', 'MBTI;C;Psikologi', '2018-12-03 22:48:47', '2018-12-04 05:07:25');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `Nama` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `level` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Nama`, `Password`, `level`, `updated_at`, `created_at`) VALUES
(5, 'Sani', '27a3f8283b8a44df9dabbf84d4b04f5e', 'Kontributor', '2018-12-03 21:52:08', '2018-12-03 21:52:08'),
(6, 'Geri', '27a3f8283b8a44df9dabbf84d4b04f5e', 'Admin', '2018-12-03 21:56:30', '2018-12-03 21:56:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ID` (`id`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `komentar_nama_index` (`Nama`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
