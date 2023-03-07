alter session set container = XEPDB1;

-- Populate Task Types
INSERT INTO WORK_MAP_TASK_TYPE VALUES(WORK_MAP_TASK_TYPE_ID.NEXTVAL, 'ODH', 'special', 1);
INSERT INTO WORK_MAP_TASK_TYPE VALUES(WORK_MAP_TASK_TYPE_ID.NEXTVAL, 'Keep Out', 'keepout', 2);
INSERT INTO WORK_MAP_TASK_TYPE VALUES(WORK_MAP_TASK_TYPE_ID.NEXTVAL, 'Penetration', 'penetration', 3);
INSERT INTO WORK_MAP_TASK_TYPE VALUES(WORK_MAP_TASK_TYPE_ID.NEXTVAL, 'Radiation', 'radiation', 4);
INSERT INTO WORK_MAP_TASK_TYPE VALUES(WORK_MAP_TASK_TYPE_ID.NEXTVAL, 'Electrical', 'electrical', 5);
INSERT INTO WORK_MAP_TASK_TYPE VALUES(WORK_MAP_TASK_TYPE_ID.NEXTVAL, 'Alignment', 'alignment', 6);
INSERT INTO WORK_MAP_TASK_TYPE VALUES(WORK_MAP_TASK_TYPE_ID.NEXTVAL, 'General', 'general', 7);
INSERT INTO WORK_MAP_TASK_TYPE VALUES(WORK_MAP_TASK_TYPE_ID.NEXTVAL, 'Vacuum', 'vacuum', 8);
INSERT INTO WORK_MAP_TASK_TYPE VALUES(WORK_MAP_TASK_TYPE_ID.NEXTVAL, 'Material Handling', 'material', 9);
INSERT INTO WORK_MAP_TASK_TYPE VALUES(WORK_MAP_TASK_TYPE_ID.NEXTVAL, 'Outage', 'outage', 10);
INSERT INTO WORK_MAP_TASK_TYPE VALUES(WORK_MAP_TASK_TYPE_ID.NEXTVAL, 'COVID', 'covid', 11);

-- Populate Task Areas
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'inj1');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'inj2');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'inj3');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'inj4');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'inj5');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'inj6');

INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'inj7', 'N');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'inj8', 'N');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'inj9', 'N');


INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'bsy1');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'bsy2');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'bsy3');

insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'bsy4', 'Y');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'bsy5', 'Y');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'bsy6', 'Y');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'bsy7', 'Y');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'bsy8', 'Y');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'bsy9', 'Y');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'bsy10', 'Y');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'bsy11', 'Y');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'bsy12', 'Y');

INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'ha1');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'ha2');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'ha3');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'hb1');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'hb2');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'hc1');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'hc2');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'hc3');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'hd1');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'hd2');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'hd3');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'hd4');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'hd5');

insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'hd6', 'Y');

INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'nl1');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'nl2');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'nl3');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'nl4');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'nl5');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'nl6');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'nl7');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'nl8');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'nl9');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'nl10');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'nl11');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'nl12');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'nl13');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'nl14');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'nl15');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'nl16');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'nl17', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'nl18', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'nl19', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'nl20', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'nl21', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'nl22', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'nl23', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'nl24', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'nl25', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'nl26', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'nl27', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'nl28', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'nl29', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'nl30', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'nl31', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'nl32', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'nl33', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'nl34', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'nl35', 'N');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'sl1');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'sl2');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'sl3');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'sl4');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'sl5');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'sl6');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'sl7');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'sl8');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'sl9');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'sl10');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'sl11');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'sl12');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'sl13');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'sl14');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'sl15');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'sl16');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'sl17');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'sl18');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'sl19', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'sl20', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'sl21', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'sl22', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'sl23', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'sl24', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'sl25', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'sl26', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'sl27', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'sl28', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'sl29', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'sl30', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'sl31', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'sl32', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'sl33', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'sl34', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'sl35', 'N');
insert into atlis_owner.work_map_task_area values(work_map_task_area_id.nextval, 'sl36', 'N');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'ea1');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'ea2');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'ea3');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'ea4');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'ea5');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'ea6');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'ea7');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'ea8');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'ea9');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'ea10');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'ea11', 'Y');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'ea12', 'Y');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'wa1');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'wa2');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'wa3');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'wa4');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'wa5');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'wa6');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'wa7');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'wa8');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'wa9');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'wa10');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'wa11', 'Y');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'wa12', 'Y');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'chl1');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'chl2');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'chl3');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'chl4');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'chl5');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'chl6');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'chl7');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'chl8');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'fel1');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'fel2');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'fel3');
INSERT INTO WORK_MAP_TASK_AREA VALUES(WORK_MAP_TASK_AREA_ID.NEXTVAL, 'fel4');


update atlis_owner.work_map_task_area set icon_only_yn = 'Y' where area_name in ('bsy2','wa12','wa11','ea11','nl10','nl11','nl13','nl18','nl19','nl2','nl22','nl23','nl25','nl26','nl27','nl29','nl4','nl6','nl8','nl9','hd2','hd4','inj3','inj4','inj5','sl1','sl11','sl13','sl14','sl2','sl20','sl21','sl24','sl25','sl27','sl28','sl29','sl3','sl5','sl7','sl9');


INSERT INTO WORK_MAP_PSS_STATE VALUES(WORK_MAP_PSS_STATE_ID.NEXTVAL, 'BP - Beam Permit', 'beam-permit', 1);
INSERT INTO WORK_MAP_PSS_STATE VALUES(WORK_MAP_PSS_STATE_ID.NEXTVAL, 'PP - Power Permit', 'power-permit', 2);
INSERT INTO WORK_MAP_PSS_STATE VALUES(WORK_MAP_PSS_STATE_ID.NEXTVAL, 'PBP - Partial Day Beam Permit', 'lock-beam-permit', 3);
INSERT INTO WORK_MAP_PSS_STATE VALUES(WORK_MAP_PSS_STATE_ID.NEXTVAL, 'PPP - Partial Day Power Permit', 'lock-power-permit', 4);

INSERT INTO WORK_MAP_PSS_STATE VALUES(WORK_MAP_PSS_STATE_ID.NEXTVAL, 'CA - Controlled Access', 'controlled-access', 5);
INSERT INTO WORK_MAP_PSS_STATE VALUES(WORK_MAP_PSS_STATE_ID.NEXTVAL, 'PCA - Partial Day Controlled', 'lock-controlled-access', 6);


INSERT INTO WORK_MAP_PSS_AREA VALUES(WORK_MAP_PSS_AREA_ID.NEXTVAL, 'nl-pss');
INSERT INTO WORK_MAP_PSS_AREA VALUES(WORK_MAP_PSS_AREA_ID.NEXTVAL, 'sl-pss');
INSERT INTO WORK_MAP_PSS_AREA VALUES(WORK_MAP_PSS_AREA_ID.NEXTVAL, 'bsy-pss');
INSERT INTO WORK_MAP_PSS_AREA VALUES(WORK_MAP_PSS_AREA_ID.NEXTVAL, 'inj-pss');
INSERT INTO WORK_MAP_PSS_AREA VALUES(WORK_MAP_PSS_AREA_ID.NEXTVAL, 'ha-pss');
INSERT INTO WORK_MAP_PSS_AREA VALUES(WORK_MAP_PSS_AREA_ID.NEXTVAL, 'hb-pss');
INSERT INTO WORK_MAP_PSS_AREA VALUES(WORK_MAP_PSS_AREA_ID.NEXTVAL, 'hc-pss');
INSERT INTO WORK_MAP_PSS_AREA VALUES(WORK_MAP_PSS_AREA_ID.NEXTVAL, 'hd-pss');
INSERT INTO WORK_MAP_PSS_AREA VALUES(WORK_MAP_PSS_AREA_ID.NEXTVAL, 'hdt-pss');
INSERT INTO WORK_MAP_PSS_AREA VALUES(WORK_MAP_PSS_AREA_ID.NEXTVAL, 'fel-pss');