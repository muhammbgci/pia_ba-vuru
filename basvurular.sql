-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 01 Kas 2025, 12:40:40
-- Sunucu sürümü: 8.3.0
-- PHP Sürümü: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `pia_yazılım`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `basvurular`
--

DROP TABLE IF EXISTS `basvurular`;
CREATE TABLE IF NOT EXISTS `basvurular` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `ad_soyad` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `egitim_durumu` enum('lisans','yuksek_lisans','diger') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'diger',
  `motivasyon_metni` text COLLATE utf8mb4_general_ci NOT NULL,
  `ozgecmis_path` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ogrenci_belgesi_path` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `ip_adresi` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `durum` enum('beklemede','incelendi','kabul','ret') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'beklemede',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ux_email_created` (`email`,`created_at`),
  KEY `idx_email` (`email`),
  KEY `idx_durum` (`durum`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `basvurular`
--

INSERT INTO `basvurular` (`id`, `ad_soyad`, `email`, `egitim_durumu`, `motivasyon_metni`, `ozgecmis_path`, `ogrenci_belgesi_path`, `ip_adresi`, `durum`, `created_at`, `updated_at`) VALUES
(1, 'Ece Aksoy', 'ece.aksoy@gmail.com', 'lisans', 'Frontend geliştirme ve kullanıcı deneyimi üzerine bilgimi artırmak istiyorum. Takım çalışması ve proje akışlarını öğrenmeyi hedefliyorum.', '/uploads/cv/ece_aksoy_cv.pdf', '/uploads/ogrenci_belgesi/ece_aksoy_belge.pdf', '185.45.12.101', 'beklemede', '2025-11-01 12:40:08', NULL),
(2, 'Deniz Yılmaz', 'deniz.yilmaz@gmail.com', 'lisans', 'Bu kamp sayesinde gerçek dünya projelerinde görev alıp portföyümü güçlendirmek istiyorum. Staj olanaklarını değerlendirmeyi amaçlıyorum.', '/uploads/cv/deniz_yilmaz_cv.pdf', '/uploads/ogrenci_belgesi/deniz_yilmaz_belge.pdf', '78.242.33.9', 'beklemede', '2025-11-01 12:40:08', NULL),
(3, 'Merve Çelik', 'merve.celik@gmail.com', 'yuksek_lisans', 'Makine öğrenmesi ve veri işleme konularında pratik yapmak istiyorum. Mentorlar ile çalışıp kariyer yolumu netleştirmek hedefim.', '/uploads/cv/merve_celik_cv.pdf', '/uploads/ogrenci_belgesi/merve_celik_belge.pdf', '94.73.210.44', 'beklemede', '2025-11-01 12:40:08', NULL),
(4, 'Barış Demir', 'baris.demir@gmail.com', 'lisans', 'Backend geliştirme ve veri tabanı yönetimi hakkında derinlemesine bilgi edinmek istiyorum. Gerçek uygulamalar üzerinde deneyim kazanmak istiyorum.', '/uploads/cv/baris_demir_cv.pdf', '/uploads/ogrenci_belgesi/baris_demir_belge.pdf', '46.27.88.150', 'beklemede', '2025-11-01 12:40:08', NULL),
(5, 'Ayşe Koç', 'ayse.koc@gmail.com', 'lisans', 'Takım içinde iletişim ve proje yönetimi becerilerimi geliştirmek istiyorum. Ayrıca modern frontend teknolojilerini uygulamalı öğrenmek istiyorum.', '/uploads/cv/ayse_koc_cv.pdf', '/uploads/ogrenci_belgesi/ayse_koc_belge.pdf', '85.99.14.200', 'beklemede', '2025-11-01 12:40:08', NULL),
(6, 'Emre Aydın', 'emre.aydin@gmail.com', 'yuksek_lisans', 'Veri bilimi ve görselleştirme konularında uygulamalı tecrübe kazanmak istiyorum. Kariyerime veri odaklı devam etmeyi planlıyorum.', '/uploads/cv/emre_aydin_cv.pdf', '/uploads/ogrenci_belgesi/emre_aydin_belge.pdf', '213.14.55.66', 'beklemede', '2025-11-01 12:40:08', NULL),
(7, 'Zeynep Karaca', 'zeynep.karaca@gmail.com', 'lisans', 'UI/UX prensiplerini projelerde uygulamak ve tasarım araçlarını öğrenmek istiyorum. Staj ve mentorluk fırsatları benim için değerli.', '/uploads/cv/zeynep_karaca_cv.pdf', '/uploads/ogrenci_belgesi/zeynep_karaca_belge.pdf', '37.123.201.77', 'beklemede', '2025-11-01 12:40:08', NULL),
(8, 'Kaan Polat', 'kaan.polat@gmail.com', 'lisans', 'Bulut servisleri ve modern deployment süreçleri hakkında pratik kazanmak istiyorum. Takım içinde sorumluluk alarak deneyim edinmek hedefim.', '/uploads/cv/kaan_polat_cv.pdf', '/uploads/ogrenci_belgesi/kaan_polat_belge.pdf', '195.12.30.12', 'beklemede', '2025-11-01 12:40:08', NULL),
(9, 'Selin Güneş', 'selin.gunes@gmail.com', 'yuksek_lisans', 'Araştırma odaklı projelerde yer almak ve akademik bilgimi endüstriyle harmanlamak istiyorum. Veri analizi ve model değerlendirme öğrenmek istiyorum.', '/uploads/cv/selin_gunes_cv.pdf', '/uploads/ogrenci_belgesi/selin_gunes_belge.pdf', '88.230.5.9', 'beklemede', '2025-11-01 12:40:08', NULL),
(10, 'Tolga Işık', 'tolga.isik@gmail.com', 'lisans', 'Mobil uygulama geliştirme konusunda deneyim kazanmak istiyorum. Kullanıcı odaklı uygulamalar yaparak portföyümü güçlendirmek niyetindeyim.', '/uploads/cv/tolga_isik_cv.pdf', '/uploads/ogrenci_belgesi/tolga_isik_belge.pdf', '141.101.79.34', 'beklemede', '2025-11-01 12:40:08', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
