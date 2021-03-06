--------------------------------------------------------
-- Archivo creado  - domingo-febrero-14-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table USUARIO
--------------------------------------------------------

  CREATE TABLE "AGENDADB"."USUARIO" 
   (	"IDUSUARIO" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(255 BYTE), 
	"CORREO" VARCHAR2(255 BYTE), 
	"NICK" VARCHAR2(255 BYTE), 
	"CONTRASENA" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index USUARIO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "AGENDADB"."USUARIO_PK" ON "AGENDADB"."USUARIO" ("IDUSUARIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table USUARIO
--------------------------------------------------------

  ALTER TABLE "AGENDADB"."USUARIO" ADD CONSTRAINT "USUARIO_PK" PRIMARY KEY ("IDUSUARIO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  DDL for Trigger USUARIO_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "AGENDADB"."USUARIO_TRG" 
BEFORE INSERT ON USUARIO 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.IDUSUARIO IS NULL THEN
      SELECT USUARIO_SEQ.NEXTVAL INTO :NEW.IDUSUARIO FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "AGENDADB"."USUARIO_TRG" ENABLE;
