-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2020 at 10:04 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id_login` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id_login`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `id`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_atribut`
--

CREATE TABLE IF NOT EXISTS `tb_atribut` (
  `id_atribut` int(11) NOT NULL AUTO_INCREMENT,
  `atribut` varchar(99) NOT NULL,
  PRIMARY KEY (`id_atribut`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tb_atribut`
--

INSERT INTO `tb_atribut` (`id_atribut`, `atribut`) VALUES
(1, 'Status'),
(2, 'Penghasilan/Bulan'),
(3, 'Pengeluaran/Bulan'),
(4, 'Luas Tanah'),
(5, 'Kepemilikan Rumah'),
(6, 'Kondisi Dinding'),
(7, 'Fasilitas BAB'),
(8, 'Sumber Penerangan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_data`
--

CREATE TABLE IF NOT EXISTS `tb_data` (
  `id_data` int(11) NOT NULL AUTO_INCREMENT,
  `id_responden` int(11) NOT NULL,
  `id_atribut` int(11) NOT NULL,
  `id_parameter` int(11) NOT NULL,
  PRIMARY KEY (`id_data`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=950 ;

--
-- Dumping data for table `tb_data`
--

INSERT INTO `tb_data` (`id_data`, `id_responden`, `id_atribut`, `id_parameter`) VALUES
(366, 1, 1, 1),
(367, 1, 2, 3),
(368, 1, 3, 3),
(369, 1, 4, 4),
(370, 1, 5, 2),
(371, 1, 6, 2),
(372, 1, 7, 3),
(373, 1, 8, 3),
(374, 2, 1, 1),
(375, 2, 2, 2),
(376, 2, 3, 1),
(377, 2, 4, 2),
(378, 2, 5, 1),
(379, 2, 6, 1),
(380, 2, 7, 1),
(381, 2, 8, 3),
(382, 3, 1, 1),
(383, 3, 2, 4),
(384, 3, 3, 4),
(385, 3, 4, 4),
(386, 3, 5, 2),
(387, 3, 6, 2),
(388, 3, 7, 2),
(389, 3, 8, 3),
(390, 4, 1, 0),
(391, 4, 2, 4),
(392, 4, 3, 2),
(393, 4, 4, 4),
(394, 4, 5, 1),
(395, 4, 6, 2),
(396, 4, 7, 2),
(397, 4, 8, 3),
(398, 5, 1, 0),
(399, 5, 2, 1),
(400, 5, 3, 1),
(401, 5, 4, 2),
(402, 5, 5, 1),
(403, 5, 6, 1),
(404, 5, 7, 1),
(405, 5, 8, 2),
(406, 6, 1, 1),
(407, 6, 2, 1),
(408, 6, 3, 1),
(409, 6, 4, 2),
(410, 6, 5, 1),
(411, 6, 6, 1),
(412, 6, 7, 1),
(413, 6, 8, 2),
(414, 7, 1, 1),
(415, 7, 2, 3),
(416, 7, 3, 4),
(417, 7, 4, 4),
(418, 7, 5, 1),
(419, 7, 6, 2),
(420, 7, 7, 2),
(421, 7, 8, 3),
(422, 8, 1, 1),
(423, 8, 2, 3),
(424, 8, 3, 4),
(425, 8, 4, 3),
(426, 8, 5, 1),
(427, 8, 6, 2),
(428, 8, 7, 2),
(429, 8, 8, 3),
(430, 9, 1, 1),
(431, 9, 2, 3),
(432, 9, 3, 3),
(433, 9, 4, 4),
(434, 9, 5, 2),
(435, 9, 6, 2),
(436, 9, 7, 2),
(437, 9, 8, 2),
(438, 10, 1, 1),
(439, 10, 2, 4),
(440, 10, 3, 4),
(441, 10, 4, 4),
(442, 10, 5, 1),
(443, 10, 6, 1),
(444, 10, 7, 2),
(445, 10, 8, 2),
(446, 11, 1, 1),
(447, 11, 2, 3),
(448, 11, 3, 3),
(449, 11, 4, 4),
(450, 11, 5, 1),
(451, 11, 6, 2),
(452, 11, 7, 2),
(453, 11, 8, 3),
(454, 12, 1, 1),
(455, 12, 2, 2),
(456, 12, 3, 2),
(457, 12, 4, 4),
(458, 12, 5, 1),
(459, 12, 6, 2),
(460, 12, 7, 2),
(461, 12, 8, 3),
(462, 13, 1, 1),
(463, 13, 2, 4),
(464, 13, 3, 3),
(465, 13, 4, 4),
(466, 13, 5, 1),
(467, 13, 6, 3),
(468, 13, 7, 2),
(469, 13, 8, 2),
(470, 14, 1, 1),
(471, 14, 2, 4),
(472, 14, 3, 4),
(473, 14, 4, 4),
(474, 14, 5, 1),
(475, 14, 6, 2),
(476, 14, 7, 2),
(477, 14, 8, 3),
(478, 15, 1, 1),
(479, 15, 2, 3),
(480, 15, 3, 3),
(481, 15, 4, 4),
(482, 15, 5, 2),
(483, 15, 6, 2),
(484, 15, 7, 3),
(485, 15, 8, 3),
(486, 16, 1, 0),
(487, 16, 2, 1),
(488, 16, 3, 1),
(489, 16, 4, 2),
(490, 16, 5, 1),
(491, 16, 6, 1),
(492, 16, 7, 1),
(493, 16, 8, 2),
(494, 17, 1, 0),
(495, 17, 2, 4),
(496, 17, 3, 3),
(497, 17, 4, 1),
(498, 17, 5, 2),
(499, 17, 6, 1),
(500, 17, 7, 1),
(501, 17, 8, 2),
(502, 18, 1, 0),
(503, 18, 2, 1),
(504, 18, 3, 2),
(505, 18, 4, 2),
(506, 18, 5, 1),
(507, 18, 6, 1),
(508, 18, 7, 1),
(509, 18, 8, 3),
(510, 19, 1, 0),
(511, 19, 2, 3),
(512, 19, 3, 2),
(513, 19, 4, 1),
(514, 19, 5, 1),
(515, 19, 6, 1),
(516, 19, 7, 1),
(517, 19, 8, 3),
(518, 20, 1, 1),
(519, 20, 2, 4),
(520, 20, 3, 4),
(521, 20, 4, 4),
(522, 20, 5, 1),
(523, 20, 6, 4),
(524, 20, 7, 3),
(525, 20, 8, 3),
(526, 21, 1, 1),
(527, 21, 2, 4),
(528, 21, 3, 4),
(529, 21, 4, 3),
(530, 21, 5, 1),
(531, 21, 6, 3),
(532, 21, 7, 2),
(533, 21, 8, 3),
(534, 22, 1, 1),
(535, 22, 2, 3),
(536, 22, 3, 4),
(537, 22, 4, 4),
(538, 22, 5, 1),
(539, 22, 6, 2),
(540, 22, 7, 2),
(541, 22, 8, 3),
(542, 23, 1, 1),
(543, 23, 2, 3),
(544, 23, 3, 2),
(545, 23, 4, 4),
(546, 23, 5, 1),
(547, 23, 6, 2),
(548, 23, 7, 2),
(549, 23, 8, 3),
(550, 24, 1, 1),
(551, 24, 2, 3),
(552, 24, 3, 4),
(553, 24, 4, 4),
(554, 24, 5, 1),
(555, 24, 6, 2),
(556, 24, 7, 4),
(557, 24, 8, 3),
(558, 25, 1, 1),
(559, 25, 2, 3),
(560, 25, 3, 3),
(561, 25, 4, 4),
(562, 25, 5, 2),
(563, 25, 6, 4),
(564, 25, 7, 2),
(565, 25, 8, 2),
(566, 26, 1, 0),
(567, 26, 2, 2),
(568, 26, 3, 2),
(569, 26, 4, 1),
(570, 26, 5, 1),
(571, 26, 6, 1),
(572, 26, 7, 1),
(573, 26, 8, 3),
(574, 27, 1, 0),
(575, 27, 2, 4),
(576, 27, 3, 4),
(577, 27, 4, 1),
(578, 27, 5, 1),
(579, 27, 6, 2),
(580, 27, 7, 1),
(581, 27, 8, 2),
(582, 28, 1, 1),
(583, 28, 2, 3),
(584, 28, 3, 3),
(585, 28, 4, 4),
(586, 28, 5, 1),
(587, 28, 6, 1),
(588, 28, 7, 2),
(589, 28, 8, 3),
(590, 29, 1, 0),
(591, 29, 2, 1),
(592, 29, 3, 1),
(593, 29, 4, 1),
(594, 29, 5, 1),
(595, 29, 6, 1),
(596, 29, 7, 1),
(597, 29, 8, 1),
(598, 30, 1, 0),
(599, 30, 2, 1),
(600, 30, 3, 1),
(601, 30, 4, 1),
(602, 30, 5, 1),
(603, 30, 6, 1),
(604, 30, 7, 1),
(605, 30, 8, 1),
(606, 31, 1, 0),
(607, 31, 2, 1),
(608, 31, 3, 1),
(609, 31, 4, 1),
(610, 31, 5, 1),
(611, 31, 6, 1),
(612, 31, 7, 1),
(613, 31, 8, 1),
(614, 32, 1, 0),
(615, 32, 2, 1),
(616, 32, 3, 1),
(617, 32, 4, 2),
(618, 32, 5, 2),
(619, 32, 6, 1),
(620, 32, 7, 1),
(621, 32, 8, 2),
(622, 33, 1, 0),
(623, 33, 2, 4),
(624, 33, 3, 2),
(625, 33, 4, 1),
(626, 33, 5, 1),
(627, 33, 6, 1),
(628, 33, 7, 2),
(629, 33, 8, 3),
(630, 34, 1, 0),
(631, 34, 2, 2),
(632, 34, 3, 2),
(633, 34, 4, 3),
(634, 34, 5, 2),
(635, 34, 6, 1),
(636, 34, 7, 1),
(637, 34, 8, 2),
(638, 35, 1, 0),
(639, 35, 2, 4),
(640, 35, 3, 2),
(641, 35, 4, 2),
(642, 35, 5, 1),
(643, 35, 6, 1),
(644, 35, 7, 1),
(645, 35, 8, 1),
(646, 36, 1, 1),
(647, 36, 2, 3),
(648, 36, 3, 4),
(649, 36, 4, 4),
(650, 36, 5, 1),
(651, 36, 6, 2),
(652, 36, 7, 3),
(653, 36, 8, 3),
(654, 37, 1, 1),
(655, 37, 2, 3),
(656, 37, 3, 3),
(657, 37, 4, 4),
(658, 37, 5, 2),
(659, 37, 6, 4),
(660, 37, 7, 2),
(661, 37, 8, 2),
(662, 38, 1, 1),
(663, 38, 2, 4),
(664, 38, 3, 4),
(665, 38, 4, 3),
(666, 38, 5, 1),
(667, 38, 6, 1),
(668, 38, 7, 1),
(669, 38, 8, 2),
(670, 39, 1, 1),
(671, 39, 2, 3),
(672, 39, 3, 3),
(673, 39, 4, 4),
(674, 39, 5, 1),
(675, 39, 6, 2),
(676, 39, 7, 2),
(677, 39, 8, 3),
(678, 40, 1, 1),
(679, 40, 2, 4),
(680, 40, 3, 3),
(681, 40, 4, 4),
(682, 40, 5, 1),
(683, 40, 6, 2),
(684, 40, 7, 2),
(685, 40, 8, 2),
(686, 41, 1, 1),
(687, 41, 2, 4),
(688, 41, 3, 4),
(689, 41, 4, 4),
(690, 41, 5, 1),
(691, 41, 6, 1),
(692, 41, 7, 2),
(693, 41, 8, 3),
(694, 42, 1, 1),
(695, 42, 2, 3),
(696, 42, 3, 4),
(697, 42, 4, 4),
(698, 42, 5, 1),
(699, 42, 6, 2),
(700, 42, 7, 2),
(701, 42, 8, 3),
(702, 43, 1, 1),
(703, 43, 2, 3),
(704, 43, 3, 3),
(705, 43, 4, 4),
(706, 43, 5, 1),
(707, 43, 6, 2),
(708, 43, 7, 2),
(709, 43, 8, 2),
(710, 44, 1, 1),
(711, 44, 2, 2),
(712, 44, 3, 2),
(713, 44, 4, 3),
(714, 44, 5, 1),
(715, 44, 6, 2),
(716, 44, 7, 3),
(717, 44, 8, 3),
(718, 45, 1, 1),
(719, 45, 2, 4),
(720, 45, 3, 4),
(721, 45, 4, 4),
(722, 45, 5, 1),
(723, 45, 6, 2),
(724, 45, 7, 2),
(725, 45, 8, 3),
(726, 46, 1, 1),
(727, 46, 2, 3),
(728, 46, 3, 4),
(729, 46, 4, 4),
(730, 46, 5, 2),
(731, 46, 6, 2),
(732, 46, 7, 2),
(733, 46, 8, 3),
(734, 47, 1, 1),
(735, 47, 2, 4),
(736, 47, 3, 4),
(737, 47, 4, 4),
(738, 47, 5, 2),
(739, 47, 6, 1),
(740, 47, 7, 2),
(741, 47, 8, 3),
(742, 48, 1, 1),
(743, 48, 2, 3),
(744, 48, 3, 4),
(745, 48, 4, 4),
(746, 48, 5, 2),
(747, 48, 6, 1),
(748, 48, 7, 2),
(749, 48, 8, 3),
(750, 49, 1, 1),
(751, 49, 2, 4),
(752, 49, 3, 4),
(753, 49, 4, 2),
(754, 49, 5, 1),
(755, 49, 6, 2),
(756, 49, 7, 3),
(757, 49, 8, 3),
(758, 50, 1, 1),
(759, 50, 2, 4),
(760, 50, 3, 3),
(761, 50, 4, 4),
(762, 50, 5, 2),
(763, 50, 6, 3),
(764, 50, 7, 2),
(765, 50, 8, 3),
(766, 51, 1, 1),
(767, 51, 2, 3),
(768, 51, 3, 3),
(769, 51, 4, 4),
(770, 51, 5, 1),
(771, 51, 6, 2),
(772, 51, 7, 2),
(773, 51, 8, 3),
(774, 52, 1, 1),
(775, 52, 2, 4),
(776, 52, 3, 3),
(777, 52, 4, 4),
(778, 52, 5, 1),
(779, 52, 6, 2),
(780, 52, 7, 3),
(781, 52, 8, 2),
(782, 53, 1, 1),
(783, 53, 2, 3),
(784, 53, 3, 2),
(785, 53, 4, 4),
(786, 53, 5, 1),
(787, 53, 6, 2),
(788, 53, 7, 2),
(789, 53, 8, 3),
(790, 54, 1, 1),
(791, 54, 2, 3),
(792, 54, 3, 3),
(793, 54, 4, 4),
(794, 54, 5, 1),
(795, 54, 6, 3),
(796, 54, 7, 2),
(797, 54, 8, 3),
(798, 55, 1, 1),
(799, 55, 2, 4),
(800, 55, 3, 4),
(801, 55, 4, 4),
(802, 55, 5, 1),
(803, 55, 6, 1),
(804, 55, 7, 2),
(805, 55, 8, 3),
(806, 56, 1, 1),
(807, 56, 2, 4),
(808, 56, 3, 3),
(809, 56, 4, 4),
(810, 56, 5, 1),
(811, 56, 6, 2),
(812, 56, 7, 2),
(813, 56, 8, 2),
(814, 57, 1, 1),
(815, 57, 2, 3),
(816, 57, 3, 4),
(817, 57, 4, 4),
(818, 57, 5, 1),
(819, 57, 6, 2),
(820, 57, 7, 3),
(821, 57, 8, 3),
(822, 58, 1, 1),
(823, 58, 2, 4),
(824, 58, 3, 3),
(825, 58, 4, 3),
(826, 58, 5, 1),
(827, 58, 6, 1),
(828, 58, 7, 2),
(829, 58, 8, 3),
(830, 59, 1, 1),
(831, 59, 2, 2),
(832, 59, 3, 3),
(833, 59, 4, 4),
(834, 59, 5, 1),
(835, 59, 6, 2),
(836, 59, 7, 2),
(837, 59, 8, 3),
(838, 60, 1, 1),
(839, 60, 2, 3),
(840, 60, 3, 4),
(841, 60, 4, 4),
(842, 60, 5, 2),
(843, 60, 6, 2),
(844, 60, 7, 3),
(845, 60, 8, 3),
(846, 61, 1, 1),
(847, 61, 2, 4),
(848, 61, 3, 4),
(849, 61, 4, 4),
(850, 61, 5, 1),
(851, 61, 6, 1),
(852, 61, 7, 2),
(853, 61, 8, 3),
(854, 62, 1, 1),
(855, 62, 2, 3),
(856, 62, 3, 2),
(857, 62, 4, 4),
(858, 62, 5, 2),
(859, 62, 6, 2),
(860, 62, 7, 2),
(861, 62, 8, 3),
(862, 63, 1, 1),
(863, 63, 2, 3),
(864, 63, 3, 3),
(865, 63, 4, 3),
(866, 63, 5, 1),
(867, 63, 6, 3),
(868, 63, 7, 2),
(869, 63, 8, 3),
(870, 64, 1, 1),
(871, 64, 2, 2),
(872, 64, 3, 2),
(873, 64, 4, 4),
(874, 64, 5, 1),
(875, 64, 6, 2),
(876, 64, 7, 3),
(877, 64, 8, 3),
(878, 65, 1, 1),
(879, 65, 2, 4),
(880, 65, 3, 4),
(881, 65, 4, 4),
(882, 65, 5, 1),
(883, 65, 6, 1),
(884, 65, 7, 2),
(885, 65, 8, 3),
(886, 66, 1, 1),
(887, 66, 2, 2),
(888, 66, 3, 3),
(889, 66, 4, 3),
(890, 66, 5, 1),
(891, 66, 6, 3),
(892, 66, 7, 2),
(893, 66, 8, 3),
(894, 67, 1, 1),
(895, 67, 2, 3),
(896, 67, 3, 3),
(897, 67, 4, 4),
(898, 67, 5, 1),
(899, 67, 6, 2),
(900, 67, 7, 2),
(901, 67, 8, 3),
(902, 68, 1, 1),
(903, 68, 2, 2),
(904, 68, 3, 2),
(905, 68, 4, 4),
(906, 68, 5, 1),
(907, 68, 6, 3),
(908, 68, 7, 2),
(909, 68, 8, 3),
(910, 69, 1, 1),
(911, 69, 2, 4),
(912, 69, 3, 4),
(913, 69, 4, 4),
(914, 69, 5, 1),
(915, 69, 6, 1),
(916, 69, 7, 3),
(917, 69, 8, 3),
(918, 70, 1, 1),
(919, 70, 2, 3),
(920, 70, 3, 4),
(921, 70, 4, 4),
(922, 70, 5, 1),
(923, 70, 6, 2),
(924, 70, 7, 2),
(925, 70, 8, 3),
(926, 71, 1, 1),
(927, 71, 2, 4),
(928, 71, 3, 3),
(929, 71, 4, 4),
(930, 71, 5, 1),
(931, 71, 6, 2),
(932, 71, 7, 2),
(933, 71, 8, 3),
(934, 72, 1, 1),
(935, 72, 2, 3),
(936, 72, 3, 4),
(937, 72, 4, 4),
(938, 72, 5, 2),
(939, 72, 6, 3),
(940, 72, 7, 3),
(941, 72, 8, 3),
(942, 73, 1, 1),
(943, 73, 2, 3),
(944, 73, 3, 4),
(945, 73, 4, 4),
(946, 73, 5, 1),
(947, 73, 6, 2),
(948, 73, 7, 2),
(949, 73, 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_data_test`
--

CREATE TABLE IF NOT EXISTS `tb_data_test` (
  `id_data` int(11) NOT NULL AUTO_INCREMENT,
  `id_responden` int(11) NOT NULL,
  `id_atribut` int(11) NOT NULL,
  `id_parameter` int(11) NOT NULL,
  PRIMARY KEY (`id_data`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `tb_data_test`
--

INSERT INTO `tb_data_test` (`id_data`, `id_responden`, `id_atribut`, `id_parameter`) VALUES
(1, 59, 1, 0),
(2, 59, 2, 1),
(3, 59, 3, 1),
(4, 59, 4, 1),
(5, 59, 5, 1),
(6, 59, 6, 1),
(7, 59, 7, 1),
(8, 59, 8, 1),
(9, 88, 1, 0),
(10, 88, 2, 1),
(11, 88, 3, 1),
(12, 88, 4, 1),
(13, 88, 5, 1),
(14, 88, 6, 1),
(15, 88, 7, 1),
(16, 88, 8, 1),
(17, 3, 1, 0),
(18, 3, 2, 1),
(19, 3, 3, 1),
(20, 3, 4, 1),
(21, 3, 5, 1),
(22, 3, 6, 1),
(23, 3, 7, 1),
(24, 3, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_parameter`
--

CREATE TABLE IF NOT EXISTS `tb_parameter` (
  `id_parameter` int(11) NOT NULL AUTO_INCREMENT,
  `id_atribut` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `parameter` varchar(30) NOT NULL,
  PRIMARY KEY (`id_parameter`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `tb_parameter`
--

INSERT INTO `tb_parameter` (`id_parameter`, `id_atribut`, `nilai`, `parameter`) VALUES
(2, 2, 4, 'Sangat Rendah'),
(3, 3, 4, 'Sangat Rendah'),
(4, 4, 4, 'LT < 50 meter persegi'),
(5, 6, 4, 'Bambu'),
(6, 7, 4, 'Umum'),
(7, 8, 3, 'Listrik 450 Watt'),
(8, 5, 2, 'Warisan'),
(9, 1, 1, 'Layak Menerima'),
(10, 2, 3, 'Rendah'),
(11, 3, 3, 'Rendah'),
(12, 4, 3, 'LT 50 - 75 meter persegi'),
(13, 6, 3, 'Papan Kayu'),
(14, 7, 3, 'Milik sendiri kondisi jelek'),
(15, 8, 2, 'Listrik 900 Watt'),
(16, 5, 1, 'Milik Sendiri'),
(17, 1, 0, 'Tidak Layak Menerima'),
(18, 2, 2, 'Sedang'),
(19, 3, 2, 'Sedang'),
(20, 4, 2, 'LT 75 - 100 meter persegi'),
(21, 6, 2, 'Tembok Biasa'),
(22, 7, 2, 'Milik sendiri kondisi sedang'),
(23, 8, 1, 'Listrik > 900 Watt'),
(24, 2, 1, 'Tinggi'),
(25, 3, 1, 'Tinggi'),
(26, 4, 1, 'LT > 100 meter persegi'),
(27, 6, 1, 'Tembok Plester'),
(28, 7, 1, 'Milik sendiri kondisi layak');

-- --------------------------------------------------------

--
-- Table structure for table `tb_responden`
--

CREATE TABLE IF NOT EXISTS `tb_responden` (
  `id_responden` int(11) NOT NULL,
  `responden` varchar(30) NOT NULL,
  PRIMARY KEY (`id_responden`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_responden`
--

INSERT INTO `tb_responden` (`id_responden`, `responden`) VALUES
(1, 'Keluarga 1'),
(2, 'Keluarga 2'),
(3, 'Keluarga 3'),
(4, 'Keluarga 4'),
(5, 'Keluarga 5'),
(6, 'Keluarga 6'),
(7, 'Keluarga 7'),
(8, 'Keluarga 8'),
(9, 'Keluarga 9'),
(10, 'Keluarga 10'),
(11, 'Keluarga 11'),
(12, 'Keluarga 12'),
(13, 'Keluarga 13'),
(14, 'Keluarga 14'),
(15, 'Keluarga 15'),
(16, 'Keluarga 16'),
(17, 'Keluarga 17'),
(18, 'Keluarga 18'),
(19, 'Keluarga 19'),
(20, 'Keluarga 20'),
(21, 'Keluarga 21'),
(22, 'Keluarga 22'),
(23, 'Keluarga 23'),
(24, 'Keluarga 24'),
(25, 'Keluarga 25'),
(26, 'Keluarga 26'),
(27, 'Keluarga 27'),
(28, 'Keluarga 28'),
(29, 'Keluarga 29'),
(30, 'Keluarga 30'),
(31, 'Keluarga 31'),
(32, 'Keluarga 32'),
(33, 'Keluarga 33'),
(34, 'Keluarga 34'),
(35, 'Keluarga 35'),
(36, 'Keluarga 36'),
(37, 'Keluarga 37'),
(38, 'Keluarga 38'),
(39, 'Keluarga 39'),
(40, 'Keluarga 40'),
(41, 'Keluarga 41'),
(42, 'Keluarga 42'),
(43, 'Keluarga 43'),
(44, 'Keluarga 44'),
(45, 'Keluarga 45'),
(46, 'Keluarga 46'),
(47, 'Keluarga 47'),
(48, 'Keluarga 48'),
(49, 'Keluarga 49'),
(50, 'Keluarga 50'),
(51, 'Keluarga 51'),
(52, 'Keluarga 52'),
(53, 'Keluarga 53'),
(54, 'Keluarga 54'),
(55, 'Keluarga 55'),
(56, 'Keluarga 56'),
(57, 'Keluarga 57'),
(58, 'Keluarga 58'),
(59, 'Keluarga 59'),
(60, 'Keluarga 60'),
(61, 'Keluarga 61'),
(62, 'Keluarga 62'),
(63, 'Keluarga 63'),
(64, 'Keluarga 64'),
(65, 'Keluarga 65'),
(66, 'Keluarga 66'),
(67, 'Keluarga 67'),
(68, 'Keluarga 68'),
(69, 'Keluarga 69'),
(70, 'Keluarga 70'),
(71, 'Keluarga 71'),
(72, 'Keluarga 72'),
(73, 'Keluarga 73');

-- --------------------------------------------------------

--
-- Table structure for table `tb_responden_test`
--

CREATE TABLE IF NOT EXISTS `tb_responden_test` (
  `id_responden` int(11) NOT NULL,
  `responden` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_responden_test`
--

INSERT INTO `tb_responden_test` (`id_responden`, `responden`) VALUES
(59, 'coba'),
(88, 'coba'),
(3, 'coba2');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
