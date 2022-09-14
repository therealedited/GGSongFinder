DELETE FROM `artistaliases`;
DELETE FROM `artist`;
DELETE FROM `song`;
DELETE FROM `artistset`;
DELETE FROM `character`;
DELETE FROM `characterset`;
DELETE FROM `musictypes`;
DELETE FROM `musictypeset`;


INSERT INTO `artist` VALUES(1, "Naoki Hashimoto");
INSERT INTO `artist` VALUES(2, "Daisuke Ishiwatari");
INSERT INTO `artist` VALUES(3, "AISHA");
INSERT INTO `artistaliases` VALUES(1, "NAOKI");

INSERT INTO `song` VALUES(1, "The Roar of the Spark", 5, 11);
INSERT INTO `artistset` VALUES(1, 1);
INSERT INTO `artistset` VALUES(1, 2);
INSERT INTO `character` VALUES(1, "Guilty Gear", "Ky Kiske");
INSERT INTO `characterset` VALUES(1, 1);
INSERT INTO `musictypes` VALUES(1, "Rock");
INSERT INTO `musictypeset` VALUES(1, 1);