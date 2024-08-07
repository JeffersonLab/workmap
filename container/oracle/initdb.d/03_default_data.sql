alter session set container = XEPDB1;

-- Populate Task Types
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_TYPE (WORK_MAP_TASK_TYPE_ID, TYPE_NAME, CSS_CLASS_NAME, ORDER_ID) VALUES (1, 'ODH', 'special', 1);
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_TYPE (WORK_MAP_TASK_TYPE_ID, TYPE_NAME, CSS_CLASS_NAME, ORDER_ID) VALUES (2, 'Keep Out', 'keepout', 2);
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_TYPE (WORK_MAP_TASK_TYPE_ID, TYPE_NAME, CSS_CLASS_NAME, ORDER_ID) VALUES (3, 'Penetration', 'penetration', 3);
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_TYPE (WORK_MAP_TASK_TYPE_ID, TYPE_NAME, CSS_CLASS_NAME, ORDER_ID) VALUES (4, 'Radiation', 'radiation', 4);
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_TYPE (WORK_MAP_TASK_TYPE_ID, TYPE_NAME, CSS_CLASS_NAME, ORDER_ID) VALUES (5, 'Electrical', 'electrical', 5);
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_TYPE (WORK_MAP_TASK_TYPE_ID, TYPE_NAME, CSS_CLASS_NAME, ORDER_ID) VALUES (6, 'Alignment', 'alignment', 6);
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_TYPE (WORK_MAP_TASK_TYPE_ID, TYPE_NAME, CSS_CLASS_NAME, ORDER_ID) VALUES (7, 'General', 'general', 7);
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_TYPE (WORK_MAP_TASK_TYPE_ID, TYPE_NAME, CSS_CLASS_NAME, ORDER_ID) VALUES (8, 'Vacuum', 'vacuum', 8);
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_TYPE (WORK_MAP_TASK_TYPE_ID, TYPE_NAME, CSS_CLASS_NAME, ORDER_ID) VALUES (9, 'Material Handling', 'material', 9);
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_TYPE (WORK_MAP_TASK_TYPE_ID, TYPE_NAME, CSS_CLASS_NAME, ORDER_ID) VALUES (10, 'Outage', 'outage', 10);
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_TYPE (WORK_MAP_TASK_TYPE_ID, TYPE_NAME, CSS_CLASS_NAME, ORDER_ID) VALUES (11, 'COVID', 'covid', 11);

-- Populate Task Areas
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (1, 'inj1', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (2, 'inj2', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (3, 'inj3', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (4, 'inj4', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (5, 'inj5', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (6, 'bsy1', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (7, 'bsy2', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (8, 'bsy3', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (9, 'ha1', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (10, 'ha2', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (11, 'hb1', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (12, 'hb2', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (13, 'hc1', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (14, 'hc2', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (15, 'hd1', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (16, 'hd2', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (17, 'hd3', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (18, 'hd4', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (19, 'nl1', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (20, 'nl2', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (21, 'nl3', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (22, 'nl4', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (23, 'nl5', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (24, 'nl6', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (25, 'nl7', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (26, 'nl8', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (27, 'nl9', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (28, 'nl10', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (29, 'nl11', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (30, 'sl1', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (31, 'sl2', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (32, 'sl3', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (33, 'sl4', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (34, 'sl5', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (35, 'sl6', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (36, 'sl7', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (37, 'sl8', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (38, 'sl9', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (39, 'sl10', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (40, 'sl11', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (41, 'sl12', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (42, 'sl13', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (43, 'ea1', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (44, 'ea2', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (45, 'ea3', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (46, 'ea4', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (47, 'ea5', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (48, 'ea6', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (49, 'ea7', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (50, 'ea8', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (51, 'ea9', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (52, 'ea10', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (53, 'wa1', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (54, 'wa2', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (55, 'wa3', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (56, 'wa4', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (57, 'wa5', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (58, 'wa6', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (59, 'wa7', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (60, 'wa8', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (61, 'wa9', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (62, 'wa10', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (63, 'chl1', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (64, 'chl2', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (65, 'fel1', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (66, 'fel2', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (67, 'chl3', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (68, 'chl4', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (69, 'fel3', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (70, 'fel4', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (71, 'chl5', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (72, 'chl6', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (73, 'chl7', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (74, 'chl8', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (81, 'wa11', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (82, 'wa12', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (83, 'ea11', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (84, 'ea12', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (85, 'sl14', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (86, 'sl15', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (87, 'sl16', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (88, 'sl17', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (89, 'sl18', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (90, 'nl12', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (91, 'nl13', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (92, 'nl14', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (93, 'nl15', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (94, 'nl16', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (95, 'hd5', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (96, 'hc3', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (97, 'ha3', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (98, 'inj6', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (101, 'nl17', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (102, 'nl18', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (103, 'nl19', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (104, 'nl20', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (105, 'nl21', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (106, 'nl22', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (107, 'nl23', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (108, 'nl24', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (109, 'nl25', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (110, 'nl26', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (111, 'nl27', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (112, 'nl28', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (113, 'nl29', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (114, 'nl30', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (115, 'nl31', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (116, 'nl32', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (117, 'nl33', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (118, 'nl34', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (119, 'nl35', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (120, 'sl19', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (121, 'sl20', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (122, 'sl21', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (123, 'sl22', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (124, 'sl23', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (125, 'sl24', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (126, 'sl25', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (127, 'sl26', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (128, 'sl27', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (129, 'sl28', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (130, 'sl29', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (131, 'sl30', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (132, 'sl31', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (133, 'sl32', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (134, 'sl33', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (135, 'sl34', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (136, 'sl35', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (137, 'sl36', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (141, 'bsy4', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (142, 'bsy5', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (143, 'bsy6', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (144, 'bsy7', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (145, 'bsy8', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (146, 'bsy9', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (147, 'bsy10', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (148, 'bsy11', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (149, 'bsy12', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (150, 'hd6', 'Y');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (161, 'inj7', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (162, 'inj8', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (163, 'inj9', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (164, 'testlab1', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (165, 'testlab2', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (166, 'testlab3', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (167, 'testlab4', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (168, 'testlab5', 'N');
INSERT INTO WORKMAP_OWNER.WORK_MAP_TASK_AREA (WORK_MAP_TASK_AREA_ID, AREA_NAME, ICON_ONLY_YN) VALUES (169, 'testlab6', 'N');

-- Populate PSS States
INSERT INTO WORKMAP_OWNER.WORK_MAP_PSS_STATE (WORK_MAP_PSS_STATE_ID, STATE_NAME, CSS_CLASS_NAME, WEIGHT) VALUES (1, 'BP - Beam Permit', 'beam-permit', 1);
INSERT INTO WORKMAP_OWNER.WORK_MAP_PSS_STATE (WORK_MAP_PSS_STATE_ID, STATE_NAME, CSS_CLASS_NAME, WEIGHT) VALUES (2, 'PP - Power Permit', 'power-permit', 2);
INSERT INTO WORKMAP_OWNER.WORK_MAP_PSS_STATE (WORK_MAP_PSS_STATE_ID, STATE_NAME, CSS_CLASS_NAME, WEIGHT) VALUES (3, 'PBP - Partial Day Beam Permit', 'lock-beam-permit', 4);
INSERT INTO WORKMAP_OWNER.WORK_MAP_PSS_STATE (WORK_MAP_PSS_STATE_ID, STATE_NAME, CSS_CLASS_NAME, WEIGHT) VALUES (4, 'PPP - Partial Day Power Permit', 'lock-power-permit', 5);
INSERT INTO WORKMAP_OWNER.WORK_MAP_PSS_STATE (WORK_MAP_PSS_STATE_ID, STATE_NAME, CSS_CLASS_NAME, WEIGHT) VALUES (6, 'PCA - Partial Day Controlled', 'lock-controlled-access', 6);
INSERT INTO WORKMAP_OWNER.WORK_MAP_PSS_STATE (WORK_MAP_PSS_STATE_ID, STATE_NAME, CSS_CLASS_NAME, WEIGHT) VALUES (5, 'CA - Controlled Access', 'controlled-access', 3);

-- Populate PSS Areas
INSERT INTO WORKMAP_OWNER.WORK_MAP_PSS_AREA (WORK_MAP_PSS_AREA_ID, AREA_NAME) VALUES (1, 'nl-pss');
INSERT INTO WORKMAP_OWNER.WORK_MAP_PSS_AREA (WORK_MAP_PSS_AREA_ID, AREA_NAME) VALUES (2, 'sl-pss');
INSERT INTO WORKMAP_OWNER.WORK_MAP_PSS_AREA (WORK_MAP_PSS_AREA_ID, AREA_NAME) VALUES (3, 'bsy-pss');
INSERT INTO WORKMAP_OWNER.WORK_MAP_PSS_AREA (WORK_MAP_PSS_AREA_ID, AREA_NAME) VALUES (4, 'inj-pss');
INSERT INTO WORKMAP_OWNER.WORK_MAP_PSS_AREA (WORK_MAP_PSS_AREA_ID, AREA_NAME) VALUES (5, 'ha-pss');
INSERT INTO WORKMAP_OWNER.WORK_MAP_PSS_AREA (WORK_MAP_PSS_AREA_ID, AREA_NAME) VALUES (6, 'hb-pss');
INSERT INTO WORKMAP_OWNER.WORK_MAP_PSS_AREA (WORK_MAP_PSS_AREA_ID, AREA_NAME) VALUES (7, 'hc-pss');
INSERT INTO WORKMAP_OWNER.WORK_MAP_PSS_AREA (WORK_MAP_PSS_AREA_ID, AREA_NAME) VALUES (8, 'hd-pss');
INSERT INTO WORKMAP_OWNER.WORK_MAP_PSS_AREA (WORK_MAP_PSS_AREA_ID, AREA_NAME) VALUES (9, 'hdt-pss');
INSERT INTO WORKMAP_OWNER.WORK_MAP_PSS_AREA (WORK_MAP_PSS_AREA_ID, AREA_NAME) VALUES (10, 'fel-pss');
INSERT INTO WORKMAP_OWNER.WORK_MAP_PSS_AREA (WORK_MAP_PSS_AREA_ID, AREA_NAME) VALUES (11, 'gts-pss');
INSERT INTO WORKMAP_OWNER.WORK_MAP_PSS_AREA (WORK_MAP_PSS_AREA_ID, AREA_NAME) VALUES (12, 'uitf-pss');

