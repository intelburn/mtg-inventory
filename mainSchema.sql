CREATE SCHEMA Magic;
CREATE TABLE Magic.colors (
  ColorID SERIAL PRIMARY KEY,
  White INT NOT NULL,
  Black INT NOT NULL,
  Blue INT NOT NULL,
  Green INT NOT NULL,
  Red INT NOT NULL
);
CREATE TABLE Magic.clans (
  ClanID SERIAL PRIMARY KEY,
  Main text NOT NULL,
  Secondary text

);
CREATE TABLE Magic.cards (
  CardID SERIAL PRIMARY KEY,
  CardName text NOT NULL,
  Quantity int NOT NULL,
  Color int REFERENCES Magic.colors (ColorID),
  CardText text,
  Clan int REFERENCES Magic.clans (ClanID)
);
CREATE TABLE Magic.keywords (
  KeywordID SERIAL PRIMARY KEY,
  Word text NOT NULL,
  RulesText text NOT NULL
);
CREATE TABLE Magic.keywordBindings (
  Card int REFERENCES Magic.cards (CardID),
  Keyword int REFERENCES Magic.keywords (KeywordID)
);
CREATE TABLE Magic.themes (
  ThemeID SERIAL PRIMARY KEY,
  Theme text NOT NULL
);
CREATE TABLE Magic.themeBindings (
  Card int REFERENCES Magic.cards (CardID),
  Theme int REFERENCES Magic.themes (ThemeID)
);
CREATE TABLE Magic.types (
  TypeID SERIAL PRIMARY KEY,
  Type text NOT NULL
);
CREATE TABLE Magic.typeBindings (
  Card int REFERENCES Magic.cards (CardID),
  Type int REFERENCES Magic.types (TypeID)
);
CREATE TABLE Magic.roles (
  RoleID SERIAL PRIMARY KEY,
  Role text NOT NULL
);
CREATE TABLE Magic.roleBindings (
  Card int REFERENCES Magic.cards (CardID),
  Role int REFERENCES Magic.roles (RoleID)
);
