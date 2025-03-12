-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 13, 2025 lúc 12:36 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `snapweb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quantri`
--

CREATE TABLE `quantri` (
  `id` int(11) NOT NULL,
  `user` varchar(20) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `shortContent` varchar(1000) NOT NULL,
  `content` mediumtext NOT NULL,
  `urlImgBaiViet` mediumtext NOT NULL,
  `shortURL` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `quantri`
--

INSERT INTO `quantri` (`id`, `user`, `title`, `shortContent`, `content`, `urlImgBaiViet`, `shortURL`) VALUES
(1, '0979951954', 'U1NMIGzDoCBnw6w/IFThuqFpIHNhbyBj4bqnbiBz4butIGThu6VuZyBTU0w/', 'U1NMIGzDoCB2aeG6v3QgdOG6r3QgY+G7p2EgU2VjdXJlIFNvY2tldHMgTGF5ZXIsIG3hu5l0IGPDtG5nIG5naOG7hyB0acOqdSBjaHXhuqluIGNobyBwaMOpcCB0aGnhur90IGzhuq1wIGvhur90IG7hu5FpIMSRxrDhu6NjIG3DoyBow7NhIGFuIHRvw6BuIGdp4buvYSBtw6F5IGNo4bunIHdlYiAoaG9zdCkgdsOgIHRyw6xuaCBkdXnhu4d0IHdlYiAoY2xpZW50KQ==', 'U1NMIGzDoCB2aeG6v3QgdOG6r3QgY+G7p2EgU2VjdXJlIFNvY2tldHMgTGF5ZXIsIG3hu5l0IGPDtG5nIG5naOG7hyB0acOqdSBjaHXhuqluIGNobyBwaMOpcCB0aGnhur90IGzhuq1wIGvhur90IG7hu5FpIMSRxrDhu6NjIG3DoyBow7NhIGFuIHRvw6BuIGdp4buvYSBtw6F5IGNo4bunIHdlYiAoaG9zdCkgdsOgIHRyw6xuaCBkdXnhu4d0IHdlYiAoY2xpZW50KS4gS+G6v3QgbuG7kWkgbsOgeSDEkeG6o20gYuG6o28gcuG6sW5nIGThu68gbGnhu4d1IMSRxrDhu6NjIHRydXnhu4FuIGdp4buvYSBob3N0IHbDoCBjbGllbnQgxJHGsOG7o2MgZHV5IHRyw6wgbeG7mXQgY8OhY2ggcmnDqm5nIHTGsCwgxJHDoW5nIHRpbiBj4bqteS4gU1NMIGhp4buHbiDEkcOjIMSRxrDhu6NjIHPhu60gZOG7pW5nIGLhu59pIGjDoG5nIHRyaeG7h3UgdHJhbmcgd2ViIMSR4buDIGLhuqNvIHbhu4cgY8OhYyBnaWFvIGThu4tjaCB0cuG7sWMgdHV54bq/biBj4bunYSBo4buNIHbhu5tpIGtow6FjaCBow6BuZy5O4bq/dSBi4bqhbiDEkcOjIHThu6tuZyB0cnV5IGPhuq1wIG3hu5l0IHRyYW5nIHdlYiBz4butIGThu6VuZyBodHRwczovLyB0csOqbiB0aGFuaCDEkeG7i2EgY2jhu4kgbmdoxKlhIGzDoCBi4bqhbiDEkcOjIHThuqFvIG3hu5l0IGvhur90IG7hu5FpIGFuIHRvw6BuIHF1YSBTU0wuIE7hur91IGPDsyBt4buZdCBj4butYSBow6BuZyBvbmxpbmUgaG/hurdjIGLDoW4gxJHhu5MgdHLDqm4gd2Vic2l0ZSwgU1NMIHPhur0gZ2nDunAgdOG6oW8gbOG6rXAgc+G7sSB0aW4gdMaw4bufbmcgduG7m2kga2jDoWNoIGjDoG5nIHbDoCBi4bqjbyBt4bqtdCB0aMO0bmcgdGluIMSRxrDhu6NjIHRyYW8gxJHhu5VpIHF1YSBs4bqhaSBnaeG7r2EgYuG6oW4gduG7m2kga2jDoWNoIGjDoG5nLg==', 'https://cdn.tgdd.vn/Files/2018/11/12/1130872/ssl-la-gi-ssl-co-quan-trong-voi-website-khong-.jpg', 'ssl-la-gi-tai-sao-phai-su-dung-ssl'),
(4, '0979951954', 'U1NMIGzDoCBnw6w/IFThuqFpIHNhbyBj4bqnbiBz4butIGThu6VuZyBTU0w/', 'U1NMIGzDoCB2aeG6v3QgdOG6r3QgY+G7p2EgU2VjdXJlIFNvY2tldHMgTGF5ZXIsIG3hu5l0IGPDtG5nIG5naOG7hyB0acOqdSBjaHXhuqluIGNobyBwaMOpcCB0aGnhur90IGzhuq1wIGvhur90IG7hu5FpIMSRxrDhu6NjIG3DoyBow7NhIGFuIHRvw6BuIGdp4buvYSBtw6F5IGNo4bunIHdlYiAoaG9zdCkgdsOgIHRyw6xuaCBkdXnhu4d0IHdlYiAoY2xpZW50KQ==', 'U1NMIGzDoCB2aeG6v3QgdOG6r3QgY+G7p2EgU2VjdXJlIFNvY2tldHMgTGF5ZXIsIG3hu5l0IGPDtG5nIG5naOG7hyB0acOqdSBjaHXhuqluIGNobyBwaMOpcCB0aGnhur90IGzhuq1wIGvhur90IG7hu5FpIMSRxrDhu6NjIG3DoyBow7NhIGFuIHRvw6BuIGdp4buvYSBtw6F5IGNo4bunIHdlYiAoaG9zdCkgdsOgIHRyw6xuaCBkdXnhu4d0IHdlYiAoY2xpZW50KS4gS+G6v3QgbuG7kWkgbsOgeSDEkeG6o20gYuG6o28gcuG6sW5nIGThu68gbGnhu4d1IMSRxrDhu6NjIHRydXnhu4FuIGdp4buvYSBob3N0IHbDoCBjbGllbnQgxJHGsOG7o2MgZHV5IHRyw6wgbeG7mXQgY8OhY2ggcmnDqm5nIHTGsCwgxJHDoW5nIHRpbiBj4bqteS4gU1NMIGhp4buHbiDEkcOjIMSRxrDhu6NjIHPhu60gZOG7pW5nIGLhu59pIGjDoG5nIHRyaeG7h3UgdHJhbmcgd2ViIMSR4buDIGLhuqNvIHbhu4cgY8OhYyBnaWFvIGThu4tjaCB0cuG7sWMgdHV54bq/biBj4bunYSBo4buNIHbhu5tpIGtow6FjaCBow6BuZy5O4bq/dSBi4bqhbiDEkcOjIHThu6tuZyB0cnV5IGPhuq1wIG3hu5l0IHRyYW5nIHdlYiBz4butIGThu6VuZyBodHRwczovLyB0csOqbiB0aGFuaCDEkeG7i2EgY2jhu4kgbmdoxKlhIGzDoCBi4bqhbiDEkcOjIHThuqFvIG3hu5l0IGvhur90IG7hu5FpIGFuIHRvw6BuIHF1YSBTU0wuIE7hur91IGPDsyBt4buZdCBj4butYSBow6BuZyBvbmxpbmUgaG/hurdjIGLDoW4gxJHhu5MgdHLDqm4gd2Vic2l0ZSwgU1NMIHPhur0gZ2nDunAgdOG6oW8gbOG6rXAgc+G7sSB0aW4gdMaw4bufbmcgduG7m2kga2jDoWNoIGjDoG5nIHbDoCBi4bqjbyBt4bqtdCB0aMO0bmcgdGluIMSRxrDhu6NjIHRyYW8gxJHhu5VpIHF1YSBs4bqhaSBnaeG7r2EgYuG6oW4gduG7m2kga2jDoWNoIGjDoG5nLg==', 'https://cdn.tgdd.vn/Files/2018/11/12/1130872/ssl-la-gi-ssl-co-quan-trong-voi-website-khong-.jpg', 'ssl-la-gi-tai-sao-phai-su-dung-ssl'),
(5, '0979951954', 'U1NMIGzDoCBnw6w/IFThuqFpIHNhbyBj4bqnbiBz4butIGThu6VuZyBTU0w/', 'U1NMIGzDoCB2aeG6v3QgdOG6r3QgY+G7p2EgU2VjdXJlIFNvY2tldHMgTGF5ZXIsIG3hu5l0IGPDtG5nIG5naOG7hyB0acOqdSBjaHXhuqluIGNobyBwaMOpcCB0aGnhur90IGzhuq1wIGvhur90IG7hu5FpIMSRxrDhu6NjIG3DoyBow7NhIGFuIHRvw6BuIGdp4buvYSBtw6F5IGNo4bunIHdlYiAoaG9zdCkgdsOgIHRyw6xuaCBkdXnhu4d0IHdlYiAoY2xpZW50KQ==', 'U1NMIGzDoCB2aeG6v3QgdOG6r3QgY+G7p2EgU2VjdXJlIFNvY2tldHMgTGF5ZXIsIG3hu5l0IGPDtG5nIG5naOG7hyB0acOqdSBjaHXhuqluIGNobyBwaMOpcCB0aGnhur90IGzhuq1wIGvhur90IG7hu5FpIMSRxrDhu6NjIG3DoyBow7NhIGFuIHRvw6BuIGdp4buvYSBtw6F5IGNo4bunIHdlYiAoaG9zdCkgdsOgIHRyw6xuaCBkdXnhu4d0IHdlYiAoY2xpZW50KS4gS+G6v3QgbuG7kWkgbsOgeSDEkeG6o20gYuG6o28gcuG6sW5nIGThu68gbGnhu4d1IMSRxrDhu6NjIHRydXnhu4FuIGdp4buvYSBob3N0IHbDoCBjbGllbnQgxJHGsOG7o2MgZHV5IHRyw6wgbeG7mXQgY8OhY2ggcmnDqm5nIHTGsCwgxJHDoW5nIHRpbiBj4bqteS4gU1NMIGhp4buHbiDEkcOjIMSRxrDhu6NjIHPhu60gZOG7pW5nIGLhu59pIGjDoG5nIHRyaeG7h3UgdHJhbmcgd2ViIMSR4buDIGLhuqNvIHbhu4cgY8OhYyBnaWFvIGThu4tjaCB0cuG7sWMgdHV54bq/biBj4bunYSBo4buNIHbhu5tpIGtow6FjaCBow6BuZy5O4bq/dSBi4bqhbiDEkcOjIHThu6tuZyB0cnV5IGPhuq1wIG3hu5l0IHRyYW5nIHdlYiBz4butIGThu6VuZyBodHRwczovLyB0csOqbiB0aGFuaCDEkeG7i2EgY2jhu4kgbmdoxKlhIGzDoCBi4bqhbiDEkcOjIHThuqFvIG3hu5l0IGvhur90IG7hu5FpIGFuIHRvw6BuIHF1YSBTU0wuIE7hur91IGPDsyBt4buZdCBj4butYSBow6BuZyBvbmxpbmUgaG/hurdjIGLDoW4gxJHhu5MgdHLDqm4gd2Vic2l0ZSwgU1NMIHPhur0gZ2nDunAgdOG6oW8gbOG6rXAgc+G7sSB0aW4gdMaw4bufbmcgduG7m2kga2jDoWNoIGjDoG5nIHbDoCBi4bqjbyBt4bqtdCB0aMO0bmcgdGluIMSRxrDhu6NjIHRyYW8gxJHhu5VpIHF1YSBs4bqhaSBnaeG7r2EgYuG6oW4gduG7m2kga2jDoWNoIGjDoG5nLg==', 'https://cdn.tgdd.vn/Files/2018/11/12/1130872/ssl-la-gi-ssl-co-quan-trong-voi-website-khong-.jpg', 'ssl-la-gi-tai-sao-phai-su-dung-ssl'),
(6, '0979951954', 'U1NMIGzDoCBnw6w/IFThuqFpIHNhbyBj4bqnbiBz4butIGThu6VuZyBTU0w/', 'U1NMIGzDoCB2aeG6v3QgdOG6r3QgY+G7p2EgU2VjdXJlIFNvY2tldHMgTGF5ZXIsIG3hu5l0IGPDtG5nIG5naOG7hyB0acOqdSBjaHXhuqluIGNobyBwaMOpcCB0aGnhur90IGzhuq1wIGvhur90IG7hu5FpIMSRxrDhu6NjIG3DoyBow7NhIGFuIHRvw6BuIGdp4buvYSBtw6F5IGNo4bunIHdlYiAoaG9zdCkgdsOgIHRyw6xuaCBkdXnhu4d0IHdlYiAoY2xpZW50KQ==', 'U1NMIGzDoCB2aeG6v3QgdOG6r3QgY+G7p2EgU2VjdXJlIFNvY2tldHMgTGF5ZXIsIG3hu5l0IGPDtG5nIG5naOG7hyB0acOqdSBjaHXhuqluIGNobyBwaMOpcCB0aGnhur90IGzhuq1wIGvhur90IG7hu5FpIMSRxrDhu6NjIG3DoyBow7NhIGFuIHRvw6BuIGdp4buvYSBtw6F5IGNo4bunIHdlYiAoaG9zdCkgdsOgIHRyw6xuaCBkdXnhu4d0IHdlYiAoY2xpZW50KS4gS+G6v3QgbuG7kWkgbsOgeSDEkeG6o20gYuG6o28gcuG6sW5nIGThu68gbGnhu4d1IMSRxrDhu6NjIHRydXnhu4FuIGdp4buvYSBob3N0IHbDoCBjbGllbnQgxJHGsOG7o2MgZHV5IHRyw6wgbeG7mXQgY8OhY2ggcmnDqm5nIHTGsCwgxJHDoW5nIHRpbiBj4bqteS4gU1NMIGhp4buHbiDEkcOjIMSRxrDhu6NjIHPhu60gZOG7pW5nIGLhu59pIGjDoG5nIHRyaeG7h3UgdHJhbmcgd2ViIMSR4buDIGLhuqNvIHbhu4cgY8OhYyBnaWFvIGThu4tjaCB0cuG7sWMgdHV54bq/biBj4bunYSBo4buNIHbhu5tpIGtow6FjaCBow6BuZy5O4bq/dSBi4bqhbiDEkcOjIHThu6tuZyB0cnV5IGPhuq1wIG3hu5l0IHRyYW5nIHdlYiBz4butIGThu6VuZyBodHRwczovLyB0csOqbiB0aGFuaCDEkeG7i2EgY2jhu4kgbmdoxKlhIGzDoCBi4bqhbiDEkcOjIHThuqFvIG3hu5l0IGvhur90IG7hu5FpIGFuIHRvw6BuIHF1YSBTU0wuIE7hur91IGPDsyBt4buZdCBj4butYSBow6BuZyBvbmxpbmUgaG/hurdjIGLDoW4gxJHhu5MgdHLDqm4gd2Vic2l0ZSwgU1NMIHPhur0gZ2nDunAgdOG6oW8gbOG6rXAgc+G7sSB0aW4gdMaw4bufbmcgduG7m2kga2jDoWNoIGjDoG5nIHbDoCBi4bqjbyBt4bqtdCB0aMO0bmcgdGluIMSRxrDhu6NjIHRyYW8gxJHhu5VpIHF1YSBs4bqhaSBnaeG7r2EgYuG6oW4gduG7m2kga2jDoWNoIGjDoG5nLg==', 'https://cdn.tgdd.vn/Files/2018/11/12/1130872/ssl-la-gi-ssl-co-quan-trong-voi-website-khong-.jpg', 'ssl-la-gi-tai-sao-phai-su-dung-ssl');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `imgtk` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `user`, `email`, `pass`, `hoten`, `sdt`, `imgtk`) VALUES
(3, 'vienne123', 'vienchelsea325@gmail.com', '$2b$10$e8Rc5HCRVi8ul9HgBg1ZCuNaNUuhKvSd7CIXGGtWTyGGqFDPEwg5i', '', '', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `quantri`
--
ALTER TABLE `quantri`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `quantri`
--
ALTER TABLE `quantri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
